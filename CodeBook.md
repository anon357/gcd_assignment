## DATA DICTIONARY

The variables in this data set are measured using the accelerometer and gyroscope 3-axial raw signals obtained from a smartphone (Samsung Galaxy S II) while the subject wearing the smartphone performed various activities (walking, walking upstairs, walking downstairs, sitting, standing, laying). The original data set, containing other variables in addition to those contained in this data set, can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The time domain signals from the accelerometer and gyroscope were captured at a constant rate of 50 Hz, and subsequently filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz. The acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. The magnitude of these three-dimensional signals were calculated using the Euclidean norm. Finally, a Fast Fourier Transform was applied to some of the signals. 

Each of the signals defined above was split into the three coordinate directions (x, y and z), and for for each direction the mean and standard deviation of the signal was computed. 

Several observations of each measure were obtained for each individual and each activity, and these observations have been averaged in the current data matrix. 

The following rules help to link the name of each variable to the description above:
- The first letter (**t** or **f**) indicates whether the signals come from the time or frequency domain.
- The next part (**body** or **gravity**) indicates whether the signal comes from the body motion component or the gravity component
- Next, **acc** or **gyro** indicates whether the signal comes from the accelerometer or the gyroscope
- If the measurement represents a Jerk signal, the name continues with **jerk**
- If the measurement represents the magnitude of the three-dimensional signal, the name continues with a **mag**
- Next, the name indicates whether the measurements represent the **mean** or **std** (standard deviation) of the signal
- Finally, *x*, *y* or *z* indicates the coordinates axis the signal represents

Full list of the included measurements:
- time domain, body motion part of the accelerometer mean and std signal
	- coordinate measurements:
		- **tbodyacc.mean.x, tbodyacc.mean.y, tbodyacc.mean.z**
		- **tbodyacc.std.x, tbodyacc.std.y, tbodyacc.std.z** 
	- time-derived (Jerk) signals
		- **tbodyaccjerk.mean.x, tbodyaccjerk.mean.y, tbodyaccjerk.mean.z**
		- **tbodyaccjerk.std.x, tbodyaccjerk.std.y, tbodyaccjerk.std.z**
	- magnitude:
		- **tbodyaccmag.mean**
		- **tbodyaccmag.std**
	- magnitude of Jerk signals:
		- **tbodyaccjerkmag.mean**
		- **tbodyaccjerkmag.std**
- frequency domain, body motion part of the accelerometer mean and std signal
	- coordinate measurements:
		- **fbodyacc.mean.x, fbodyacc.mean.y, fbodyacc.mean.z**
		- **fbodyacc.std.x, fbodyacc.std.y, fbodyacc.std.z**
	- time-derived (Jerk) signals:
		- **fbodyaccjerk.mean.x, fbodyaccjerk.mean.y, fbodyaccjerk.mean.z**
		- **fbodyaccjerk.std.x, fbodyaccjerk.std.y, fbodyaccjerk.std.z**
	- magnitude:
		- **fbodyaccmag.mean**
		- **fbodyaccmag.std**
	- magnitude of Jerk signals:
		- **fbodybodyaccjerkmag.mean**
		- **fbodybodyaccjerkmag.std**
- time domain, gravity part of the accelerometer mean and std signal
	- coordinate measurements:
		- **tgravityacc.mean.x, tgravityacc.mean.y, tgravityacc.mean.z**
		- **tgravityacc.std.x, tgravityacc.std.y, tgravityacc.std.z**
	- magnitude:
		- **tgravityaccmag.mean**
		- **tgravityaccmag.std**
		
- time domain, body motion part of the gyrometer mean and std signal
	- coordinate measurements:
		- **tbodygyro.mean.x, tbodygyro.mean.y, tbodygyro.mean.z**
		- **tbodygyro.std.x, tbodygyro.std.y, tbodygyro.std.z**
	- time-derived (Jerk) signals
		- **tbodygyrojerk.mean.x, tbodygyrojerk.mean.y, tbodygyrojerk.mean.z**
		- **tbodygyrojerk.std.x, tbodygyrojerk.std.y, tbodygyrojerk.std.z**
	- magnitude:
		- **tbodygyromag.mean**
		- **tbodygyromag.std**
	- magnitude of Jerk signals:
		- **tbodygyrojerkmag.mean**
		- **tbodygyrojerkmag.std**
- frequency domain, body motion part of the gyrometer mean and std signal
	- coordinate measurements:
		- **fbodygyro.mean.x, fbodygyro.mean.y, fbodygyro.mean.z**
		- **fbodygyro.std.x, fbodygyro.std.y, fbodygyro.std.z**
	- magnitude:
		- **fbodybodygyromag.mean**
		- **fbodybodygyromag.std**
	- magnitude of Jerk signals:
		- **fbodybodygyrojerkmag.mean**
		- **fbodybodygyrojerkmag.std**

