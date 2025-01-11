# CodeBook

## General information

The dataset comprises information gathered from the accelerometers of the Samsung Galaxy S smartphone. It features measurements that focus on the average values and the variability (mean and sd) for each recorded metric.

## Variables

 [1] "Subject"                : Identifier of the subject who carried out the experiment.
 [2] "Activity"               : Activity performed by the subject.
 [3] tBodyAcc-mean()-X: Mean of body acceleration in the X direction.
 [4] tBodyAcc-mean()-Y: Mean of body acceleration in the Y direction.
 [5] tBodyAcc-mean()-Z: Mean of body acceleration in the Z direction.
 [6] tBodyAcc-std()-X: Standard deviation of body acceleration in the X direction.
 [7] tBodyAcc-std()-Y: Standard deviation of body acceleration in the Y direction.
 [8] tBodyAcc-std()-Z: Standard deviation of body acceleration in the Z direction.
 [9] tGravityAcc-mean()-X: Mean of gravity acceleration in the X direction.
[10] tGravityAcc-mean()-Y: Mean of gravity acceleration in the Y direction.
[11] tGravityAcc-mean()-Z: Mean of gravity acceleration in the Z direction.
[12] tGravityAcc-std()-X: Standard deviation of gravity acceleration in the X direction.
[13] tGravityAcc-std()-Y: Standard deviation of gravity acceleration in the Y direction.
[14] tGravityAcc-std()-Z: Standard deviation of gravity acceleration in the Z direction.
[15] tBodyAccJerk-mean()-X: Mean of body linear acceleration jerk in the X direction.
[16] tBodyAccJerk-mean()-Y: Mean of body linear acceleration jerk in the Y direction.
[17] tBodyAccJerk-mean()-Z: Mean of body linear acceleration jerk in the Z direction.
[18] tBodyAccJerk-std()-X: Standard deviation of body linear acceleration jerk in the X direction.
[19] tBodyAccJerk-std()-Y: Standard deviation of body linear acceleration jerk in the Y direction.
[20] tBodyAccJerk-std()-Z: Standard deviation of body linear acceleration jerk in the Z direction.
[21] tBodyGyro-mean()-X: Mean of body gyroscope in the X direction.
[22] tBodyGyro-mean()-Y: Mean of body gyroscope in the Y direction.
[23] tBodyGyro-mean()-Z: Mean of body gyroscope in the Z direction.
[24] tBodyGyro-std()-X: Standard deviation of body gyroscope in the X direction.
[25] tBodyGyro-std()-Y: Standard deviation of body gyroscope in the Y direction.
[26] tBodyGyro-std()-Z: Standard deviation of body gyroscope in the Z direction.
[27] tBodyGyroJerk-mean()-X: Mean of body gyroscope jerk in the X direction.
[28] tBodyGyroJerk-mean()-Y: Mean of body gyroscope jerk in the Y direction.
[29] tBodyGyroJerk-mean()-Z: Mean of body gyroscope jerk in the Z direction.
[30] tBodyGyroJerk-std()-X: Standard deviation of body gyroscope jerk in the X direction.
[31] tBodyGyroJerk-std()-Y: Standard deviation of body gyroscope jerk in the Y direction.
[32] tBodyGyroJerk-std()-Z: Standard deviation of body gyroscope jerk in the Z direction.
[33] tBodyAccMag-mean(): Mean of body acceleration magnitude.
[34] tBodyAccMag-std(): Standard deviation of body acceleration magnitude.
[35] tGravityAccMag-mean(): Mean of gravity acceleration magnitude.
[36] tGravityAccMag-std(): Standard deviation of gravity acceleration magnitude.
[37] tBodyAccJerkMag-mean(): Mean of body linear acceleration jerk magnitude.
[38] tBodyAccJerkMag-std(): Standard deviation of body linear acceleration jerk magnitude.
[39] tBodyGyroMag-mean(): Mean of body gyroscope magnitude.
[40] tBodyGyroMag-std(): Standard deviation of body gyroscope magnitude.
[41] tBodyGyroJerkMag-mean(): Mean of body gyroscope jerk magnitude.
[42] tBodyGyroJerkMag-std(): Standard deviation of body gyroscope jerk magnitude.
[43] fBodyAcc-mean()-X: Mean of body acceleration in the frequency domain in the X direction.
[44] fBodyAcc-mean()-Y: Mean of body acceleration in the frequency domain in the Y direction.
[45] fBodyAcc-mean()-Z: Mean of body acceleration in the frequency domain in the Z direction.
[46] fBodyAcc-std()-X: Standard deviation of body acceleration in the frequency domain in the X direction.
[47] fBodyAcc-std()-Y: Standard deviation of body acceleration in the frequency domain in the Y direction.
[48] fBodyAcc-std()-Z: Standard deviation of body acceleration in the frequency domain in the Z direction.
[49] fBodyAccJerk-mean()-X: Mean of body linear acceleration jerk in the frequency domain in the X direction.
[50] fBodyAccJerk-mean()-Y: Mean of body linear acceleration jerk in the frequency domain in the Y direction.
[51] fBodyAccJerk-mean()-Z: Mean of body linear acceleration jerk in the frequency domain in the Z direction.
[52] fBodyAccJerk-std()-X: Standard deviation of body linear acceleration jerk in the frequency domain in the X direction.
[53] fBodyAccJerk-std()-Y: Standard deviation of body linear acceleration jerk in the frequency domain in the Y direction.
[54] fBodyAccJerk-std()-Z: Standard deviation of body linear acceleration jerk in the frequency domain in the Z direction.
[55] fBodyGyro-mean()-X: Mean of body gyroscope in the frequency domain in the X direction.
[56] fBodyGyro-mean()-Y: Mean of body gyroscope in the frequency domain in the Y direction.
[57] fBodyGyro-mean()-Z: Mean of body gyroscope in the frequency domain in the Z direction.
[58] fBodyGyro-std()-X: Standard deviation of body gyroscope in the frequency domain in the X direction.
[59] fBodyGyro-std()-Y: Standard deviation of body gyroscope in the frequency domain in the Y direction.
[60] fBodyGyro-std()-Z: Standard deviation of body gyroscope in the frequency domain in the Z direction.
[61] fBodyAccMag-mean(): Mean of body acceleration magnitude in the frequency domain.
[62] fBodyAccMag-std(): Standard deviation of body acceleration magnitude in the frequency domain.
[63] fBodyBodyAccJerkMag-mean(): Mean of body linear acceleration jerk magnitude in the frequency domain.
[64] fBodyBodyAccJerkMag-std(): Standard deviation of body linear acceleration jerk magnitude in the frequency domain.
[65] fBodyBodyGyroMag-mean(): Mean of body gyroscope magnitude in the frequency domain.
[66] fBodyBodyGyroMag-std(): Standard deviation of body gyroscope magnitude in the frequency domain.
[67] fBodyBodyGyroJerkMag-mean(): Mean of body gyroscope jerk magnitude in the frequency domain.
[68] fBodyBodyGyroJerkMag-std(): Standard deviation of body gyroscope jerk magnitude in the frequency domain.

## Transformations

Combined the Training and Test Sets: First, I merged the training data with the test data to create a single, unified dataset. 

Selected Key Measurements: From the combined dataset, I extracted only the measurements that focused on the mean (average) and standard deviation (variability) for each observation using appropiate functions. 

Assigned Descriptive Activity Names: I replaced the activity codes in the dataset with descriptive names. Instead of using numeric codes, I labeled the activities with meaningful names like "Walking" or "Standing," which made the data much more understandable.

Labeled the Dataset with Descriptive Variable Names: I updated the dataset to use clear and descriptive variable names. This involved renaming the columns to reflect the type of measurement they contained, helping me and others understand the data at a glance.

Created a Tidy Data Set with Averages: Finally, I generated a new, tidy dataset that calculated the average of each variable for each activity and each subject. This step summarized the data, providing a clear overview of the average measurements for each combination of activity and subject.

