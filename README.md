This directory contains a script (run_analysis.R) that reads data from a human activity recognition using smartphones, cleans the data and returns an independent, tidy data set. 

## Description of the data
The data set can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and is described in more detail on http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. The experiments underlying the data set were performed on a group of 30 volunteers, who each performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist, recording 3-axial linear acceleration and 3-axial angular velocity. The dataset was partitioned into a training set (70% of the participants) and a test set (30% of the participants). 

## How the script works
To run the script, it is assumed that the data has been downloaded and unpacked, and are contained in a folder called **UCI HAR Dataset** in the current working directory. 

By sourcing the script (i.e., from within **R** typing *source("run_analysis.R")*, the following steps will be performed:

(1) Merge the training and test sets to create a single data set
(2) Extract the mean and standard deviation observations for each measurement
(3) Name the activities in the data set
(4) Label the data set with activity names
(5) Create a second, tidy data set containing the average of each variable for each activity and each subject

The final, tidy data set is saved in the current **R** environment as *tidy.data*.