## This script will load and clean a data set on human activity recognition using smartphones (retrieved from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, described in more detail on http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The experiments were performed on a group of 30 volunteers, who each performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist, recording 3-axial linear acceleration and 3-axial angular velocity. The dataset was partitioned into a training set (70% of the participants) and a test set (30% of the participants). 
## The code in this script assumes that the data has been downloaded and unpacked, and are contained in a folder called "UCI HAR Dataset" in the current working directory. The script will perform the following steps:
## (1) Merge the training and test sets to create a single data set
## (2) Extract the mean and standard deviation observations for each measurement
## (3) Name the activities in the data set
## (4) Label the data set with activity names
## (5) Create a second, tidy data set containing the average of each variable for each activity and each subject

## Load the data for the training and test sets
## x contains the measurements
## features gives the names of the columns of x
## y gives the activity (1-WALKING, 2-WALKING_UPSTAIRS, 3-WALKING_DOWNSTAIRS, 4-SITTING, 5-STANDING, 6-LAYING)
## subj gives the subject
x.train <- read.table("UCI HAR Dataset/train/X_train.txt", as.is = TRUE)
y.train <- read.table("UCI HAR Dataset/train/y_train.txt", as.is = TRUE)
subj.train <- read.table("UCI HAR Dataset/train/subject_train.txt", as.is = TRUE)
x.test <- read.table("UCI HAR Dataset/test/X_test.txt", as.is = TRUE)
y.test <- read.table("UCI HAR Dataset/test/y_test.txt", as.is = TRUE)
subj.test <- read.table("UCI HAR Dataset/test/subject_test.txt", as.is = TRUE)
features <- read.table("UCI HAR Dataset/features.txt", as.is = TRUE)

## Merge the training and the test set to create a single data set.
x <- rbind(x.train, x.test)
y <- rbind(y.train, y.test)[, 1]
subj <- rbind(subj.train, subj.test)[, 1]

## Extract only the features representing the mean and the standard deviations
keep.m <- grep("-mean\\(\\)", features[, 2])
keep.sd <- grep("-std()", features[, 2])
x <- x[, union(keep.m, keep.sd)]
features <- features[union(keep.m, keep.sd), 2]
features <- gsub("-", ".", tolower(gsub("\\(\\)", "", features)))

## Correct some variable names containing 'body' twice
features <- gsub("bodybody", "body", features)
colnames(x) <- features

## Rename the activities with more informative names
activity <- c("walking", "walking_upstairs", "walking_downstairs", 
              "sitting", "standing", "laying")[y]
subj_activity <- paste(subj, activity, sep = ".")

## Create a second, independent tidy data set with the average 
## of each variable for each activity and each subject
tidy.data <- apply(x, 2, function(y) tapply(y, subj_activity, mean))
tidy.data <- cbind(subj.activity = rownames(tidy.data), tidy.data)

## Save the tidy data to a text file
write.table(tidy.data, file = "tidy.data.txt", row.names = FALSE, 
            col.names = TRUE, quote = FALSE, sep = "\t")
