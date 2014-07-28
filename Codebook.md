Codebook 
=================

The steps that were taken in the run_analysis.R file to obtain the tidy dataset "data1" can be 
summarised as 

1. Read training datasets
2. Read test datasets
3. Read names of features
4. Introduce more descriptive names for parts of variables
5. Merge raw training and test datasets
6. Assemble combined dataframe by merging training and test dataframes
7. Substitute descriptive activity names in combined dataframe
8. Identify those features that involve mean and standard deviation 
9. Retain columns in merged dataframe that involve mean and standard deviation
10. Remove auxilliary dataframes, vectors etc

The features that were retained in the data1 dataset are the mean and standard deviation of 
the following variables

X component of body accelleration in time
Y component of body accelleration in time
Z component of body accelleration in time
X component of accelleration due to gravity in time
Y component of accelleration due to gravity in time
Z component of accelleration due to gravity in time
X component of body accelleration jerk in time
Y component of body accelleration jerk in time
Z component of body accelleration jerk in time
X component of body rotational rate in time
Y component of body rotational rate in time
Z component of body rotational rate in time
X component of body rotational jerk rate in time
Y component of body rotational jerk rate in time
Z component of body rotational jerk rate in time
Magnitude of body acceleration in time
Magnitude of acceleration due to gravity in time
Magnitude of body acceleration jerk in time
Magnitude of body rotational rate in time
Magnitude of body rotational jerk rate in time

X component of body accelleration (frequency)
Y component of body accelleration (frequency)
Z component of body accelleration (frequency)
X component of accelleration due to gravity (frequency)
Y component of accelleration due to gravity (frequency)
Z component of accelleration due to gravity (frequency)
X component of body accelleration jerk (frequency)
Y component of body accelleration jerk (frequency)
Z component of body accelleration jerk (frequency)
X component of body rotational rate (frequency)
Y component of body rotational rate (frequency)
Z component of body rotational rate (frequency)
X component of body rotational jerk rate (frequency)
Y component of body rotational jerk rate (frequency)
Z component of body rotational jerk rate (frequency)
Magnitude of body acceleration (frequency)
Magnitude of acceleration due to gravity (frequency)
Magnitude of body acceleration jerk (frequency)
Magnitude of body rotational rate (frequency)
Magnitude of body rotational jerk rate (frequency)

i.e.

Time.BodyAccel.mean.X
Time.BodyAccel.mean.Y
Time.BodyAccel.mean.Z
Time.GravityAccel.mean.X
Time.GravityAccel.mean.Y
Time.GravityAccel.mean.Z
Time.BodyAccelJerk.mean.X
Time.BodyAccelJerk.mean.Y
Time.BodyAccelJerk.mean.Z
Time.BodyGyro.mean.X
Time.BodyGyro.mean.Y
Time.BodyGyro.mean.Z
Time.BodyGyroJerk.mean.X
Time.BodyGyroJerk.mean.Y
Time.BodyGyroJerk.mean.Z
Time.BodyAccelMagn.mean
Time.GravityAccelMagn.mean
Time.BodyAccelJerkMagn.mean
Time.BodyGyroMagn.mean
Time.BodyGyroJerkMagn.mean
Freq.BodyAccel.mean.X
Freq.BodyAccel.mean.Y
Freq.BodyAccel.mean.Z
Freq.BodyAccelJerk.mean.X
Freq.BodyAccelJerk.mean.Y
Freq.BodyAccelJerk.mean.Z
Freq.BodyGyro.mean.X
Freq.BodyGyro.mean.Y
Freq.BodyGyro.mean.Z
Freq.BodyAccelMagn.mean
Freq.BodyAccelJerkMagn.mean
Freq.BodyGyroMagn.mean
Freq.BodyGyroJerkMagn.mean

and

Time.BodyAccel.std.X
Time.BodyAccel.std.Y
Time.BodyAccel.std.Z
Time.GravityAccel.std.X
Time.GravityAccel.std.Y
Time.GravityAccel.std.Z
Time.BodyAccelJerk.std.X
Time.BodyAccelJerk.std.Y
Time.BodyAccelJerk.std.Z
Time.BodyGyro.std.X
Time.BodyGyro.std.Y
Time.BodyGyro.std.Z
Time.BodyGyroJerk.std.X
Time.BodyGyroJerk.std.Y
Time.BodyGyroJerk.std.Z
Time.BodyAccelMagn.std
Time.GravityAccelMagn.std
Time.BodyAccelJerkMagn.std
Time.BodyGyroMagn.std
Time.BodyGyroJerkMagn.std
Freq.BodyAccel.std.X
Freq.BodyAccel.std.Y
Freq.BodyAccel.std.Z
Freq.BodyAccelJerk.std.X
Freq.BodyAccelJerk.std.Y
Freq.BodyAccelJerk.std.Z
Freq.BodyGyro.std.X
Freq.BodyGyro.std.Y
Freq.BodyGyro.std.Z
Freq.BodyAccelMagn.std
Freq.BodyAccelJerkMagn.std
Freq.BodyGyroMagn.std
Freq.BodyGyroJerkMagn.std

The units for time variables are in seconds and for frequency variables in Hz.

There are 6 activities. They are labeled:

1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING
