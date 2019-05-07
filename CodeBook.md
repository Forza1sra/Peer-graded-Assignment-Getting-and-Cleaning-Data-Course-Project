#CodeBook
##The Raw Data
###Measurement variables

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

###ID variables

  * Subject (found in train and test)
  * Activity (found in TrainY and TestY)

The subject variable is the numeric ID representing each individual participant.
The activity variable is a numeric vector where each number represents a individual activity.

##tidyTable data

###Measurement variables
The following measurement variables were extracted and renamed from the dataset:

  * timeBodyAcc-mean-X
  * timeBodyAcc-mean-Y
  * timeBodyAcc-mean-Z
  * timeBodyAcc-std-X
  * timeBodyAcc-std-Y
  * timeBodyAcc-std-Z
  * timeGravityAcc-mean-X
  * timeGravityAcc-mean-Y
  * timeGravityAcc-mean-Z
  * timeGravityAcc-std-X
  * timeGravityAcc-std-Y
  * timeGravityAcc-std-Z
  * timeBodyAccJerk-mean-X
  * timeBodyAccJerk-mean-Y
  * timeBodyAccJerk-mean-Z
  * timeBodyAccJerk-std-X
  * timeBodyAccJerk-std-Y
  * timeBodyAccJerk-std-Z
  * timeBodyGyro-mean-X
  * timeBodyGyro-mean-Y
  * timeBodyGyro-mean-Z
  * timeBodyGyro-std-X
  * timeBodyGyro-std-Y
  * timeBodyGyro-std-Z
  * timeBodyGyroJerk-mean-X
  * timeBodyGyroJerk-mean-Y
  * timeBodyGyroJerk-mean-Z
  * timeBodyGyroJerk-std-X
  * timeBodyGyroJerk-std-Y
  * timeBodyGyroJerk-std-Z
  * timeBodyAccMag-mean
  * timeBodyAccMag-std
  * timeGravityAccMag-mean
  * timeGravityAccMag-std
  * timeBodyAccJerkMag-mean
  * timeBodyAccJerkMag-std
  * timeBodyGyroMag-mean
  * timeBodyGyroMag-std
  * timeBodyGyroJerkMag-mean
  * timeBodyGyroJerkMag-std
  * frequencyBodyAcc-mean-X
  * frequencyBodyAcc-mean-Y
  * frequencyBodyAcc-mean-Z
  * frequencyBodyAcc-std-X
  * frequencyBodyAcc-std-Y
  * frequencyBodyAcc-std-Z
  * frequencyBodyAcc-meanFreq-X
  * frequencyBodyAcc-meanFreq-Y
  * frequencyBodyAcc-meanFreq-Z
  * frequencyBodyAccJerk-mean-X
  * frequencyBodyAccJerk-mean-Y
  * frequencyBodyAccJerk-mean-Z
  * frequencyBodyAccJerk-std-X
  * frequencyBodyAccJerk-std-Y
  * frequencyBodyAccJerk-std-Z
  * frequencyBodyAccJerk-meanFreq-X
  * frequencyBodyAccJerk-meanFreq-Y
  * frequencyBodyAccJerk-meanFreq-Z
  * frequencyBodyGyro-mean-X
  * frequencyBodyGyro-mean-Y
  * frequencyBodyGyro-mean-Z
  * frequencyBodyGyro-std-X
  * frequencyBodyGyro-std-Y
  * frequencyBodyGyro-std-Z
  * frequencyBodyGyro-meanFreq-X
  * frequencyBodyGyro-meanFreq-Y
  * frequencyBodyGyro-meanFreq-Z
  * frequencyBodyAccMag-mean
  * frequencyBodyAccMag-std
  * frequencyBodyAccMag-meanFreq
  * frequencyBodyAccJerkMag-mean
  * frequencyBodyAccJerkMag-std
  * frequencyBodyAccJerkMag-meanFreq
  * frequencyBodyGyroMag-mean
  * frequencyBodyGyroMag-std
  * frequencyBodyGyroMag-meanFreq
  * frequencyBodyGyroJerkMag-mean
  * frequencyBodyGyroJerkMag-std
  * frequencyBodyGyroJerkMag-meanFreq
  
As one can see, the parenthesis were removed, some typos corrected, and the single letter abbreviated words were expanded. For the sake of keeping the variable names short, the multi-letter abbreviated words were left as is. Other than being renamed, they represent the same type of measurement that they did in the raw dataset. The difference being that tidyTable.txt shows the average of each recorded value during the entire session.

###ID variables
  * subject
  * activity
The subject variable is the numeric ID representing each individual participant.
The activity variables lists the exercise that was done to record the data.