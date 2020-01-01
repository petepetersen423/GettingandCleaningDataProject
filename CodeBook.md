---
title: "CodeBook"
author: "Pete Petersen III"
date: "1/1/2020"
output: html_document


Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'



## Features Requested 
(for the Project include only this that are for mean and standard deviation)
 
 
 [1] "tBodyAcc-Mean-X"                    "tBodyAcc-Mean-Y"                    "tBodyAcc-Mean-Z"                   
 [4] "tBodyAcc-Sd-X"                      "tBodyAcc-Sd-Y"                      "tBodyAcc-Sd-Z"                     
 [7] "tGravityAcc-Mean-X"                 "tGravityAcc-Mean-Y"                 "tGravityAcc-Mean-Z"                
[10] "tGravityAcc-Sd-X"                   "tGravityAcc-Sd-Y"                   "tGravityAcc-Sd-Z"                  
[13] "tBodyAccJerk-Mean-X"                "tBodyAccJerk-Mean-Y"                "tBodyAccJerk-Mean-Z"               
[16] "tBodyAccJerk-Sd-X"                  "tBodyAccJerk-Sd-Y"                  "tBodyAccJerk-Sd-Z"                 
[19] "tBodyGyro-Mean-X"                   "tBodyGyro-Mean-Y"                   "tBodyGyro-Mean-Z"                  
[22] "tBodyGyro-Sd-X"                     "tBodyGyro-Sd-Y"                     "tBodyGyro-Sd-Z"                    
[25] "tBodyGyroJerk-Mean-X"               "tBodyGyroJerk-Mean-Y"               "tBodyGyroJerk-Mean-Z"              
[28] "tBodyGyroJerk-Sd-X"                 "tBodyGyroJerk-Sd-Y"                 "tBodyGyroJerk-Sd-Z"                
[31] "tBodyAccMag-Mean"                   "tBodyAccMag-Sd"                     "tGravityAccMag-Mean"               
[34] "tGravityAccMag-Sd"                  "tBodyAccJerkMag-Mean"               "tBodyAccJerkMag-Sd"                
[37] "tBodyGyroMag-Mean"                  "tBodyGyroMag-Sd"                    "tBodyGyroJerkMag-Mean"             
[40] "tBodyGyroJerkMag-Sd"                "fBodyAcc-Mean-X"                    "fBodyAcc-Mean-Y"                   
[43] "fBodyAcc-Mean-Z"                    "fBodyAcc-Sd-X"                      "fBodyAcc-Sd-Y"                     
[46] "fBodyAcc-Sd-Z"                      "fBodyAcc-MeanFreq-X"                "fBodyAcc-MeanFreq-Y"               
[49] "fBodyAcc-MeanFreq-Z"                "fBodyAccJerk-Mean-X"                "fBodyAccJerk-Mean-Y"               
[52] "fBodyAccJerk-Mean-Z"                "fBodyAccJerk-Sd-X"                  "fBodyAccJerk-Sd-Y"                 
[55] "fBodyAccJerk-Sd-Z"                  "fBodyAccJerk-MeanFreq-X"            "fBodyAccJerk-MeanFreq-Y"           
[58] "fBodyAccJerk-MeanFreq-Z"            "fBodyGyro-Mean-X"                   "fBodyGyro-Mean-Y"                  
[61] "fBodyGyro-Mean-Z"                   "fBodyGyro-Sd-X"                     "fBodyGyro-Sd-Y"                    
[64] "fBodyGyro-Sd-Z"                     "fBodyGyro-MeanFreq-X"               "fBodyGyro-MeanFreq-Y"              
[67] "fBodyGyro-MeanFreq-Z"               "fBodyAccMag-Mean"                   "fBodyAccMag-Sd"                    
[70] "fBodyAccMag-MeanFreq"               "fBodyBodyAccJerkMag-Mean"           "fBodyBodyAccJerkMag-Sd"            
[73] "fBodyBodyAccJerkMag-MeanFreq"       "fBodyBodyGyroMag-Mean"              "fBodyBodyGyroMag-Sd"               
[76] "fBodyBodyGyroMag-MeanFreq"          "fBodyBodyGyroJerkMag-Mean"          "fBodyBodyGyroJerkMag-Sd"           
[79] "fBodyBodyGyroJerkMag-MeanFreq"      "angletBodyAccMean,gravity"          "angletBodyAccJerkMean,gravityMean" 
[82] "angletBodyGyroMean,gravityMean"     "angletBodyGyroJerkMean,gravityMean" "angleX,gravityMean"                
[85] "angleY,gravityMean"                 "angleZ,gravityMean" 

## Activity Labels

WALKING (value 1): subject was walking during the test
WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
SITTING (value 4): subject was sitting during the test
STANDING (value 5): subject was standing during the test
LAYING (value 6): subject was laying down during the test