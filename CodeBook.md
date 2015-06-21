---
# title: "CodeBook"
# author: "Kevin O"
# date: "June 21, 2015"

# This CodeBook.md file describes the structure of the tidy dataset that I submitted for the course project for "Coursera: Getting and Cleaning Data" 
## My data was processed from the Human Activity Recognition Using Smartphones Dataset, vs 1.0
## By Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
## Smartlab - Non Linear Complex Systems Laboratory
## DITEN - Universit‡ degli Studi di Genova.
## Via Opera Pia 11A, I-16145, Genoa, Italy.
## activityrecognition@smartlab.ws
## www.smartlab.ws

## The original dataset had The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

## Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

## Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

## These signals were used to estimate variables of the feature vector for each pattern:  
## '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

## This dataset uses only the mean(): Mean and std(): Standard Deviation of the original measurements

## The tidy dataset is skinny and narrow and has four columns
###  Column 1:  "Subject" and takes the value 1 - 30 representing one of the subjects in either the training or testing datasets
###  Column 2:  "Activity" is a factor variable taking one of six activities as factors:
####    Walking
####    Walking_Upstairs
####    Walking_Downstairs
####    Sitting
####    Standing
####    Laying
#
###  Column 3:  "variable" is one of the 66 measurements that correspond to the measurements that are either "means" (have "mean()" in their names) or "standard deviations" (have "std()" in their names)
####[1] "tBodyAcc-mean()-X"           "tBodyAcc-mean()-Y"          
#### [3] "tBodyAcc-mean()-Z"           "tBodyAcc-std()-X"           
#### [5] "tBodyAcc-std()-Y"            "tBodyAcc-std()-Z"           
####[7] "tGravityAcc-mean()-X"        "tGravityAcc-mean()-Y"       
#### [9] "tGravityAcc-mean()-Z"        "tGravityAcc-std()-X"        
####[11] "tGravityAcc-std()-Y"         "tGravityAcc-std()-Z"        
####[13] "tBodyAccJerk-mean()-X"       "tBodyAccJerk-mean()-Y"      
####[15] "tBodyAccJerk-mean()-Z"       "tBodyAccJerk-std()-X"       
####[17] "tBodyAccJerk-std()-Y"        "tBodyAccJerk-std()-Z"       
####[19] "tBodyGyro-mean()-X"          "tBodyGyro-mean()-Y"         
####[21] "tBodyGyro-mean()-Z"          "tBodyGyro-std()-X"          
####[23] "tBodyGyro-std()-Y"           "tBodyGyro-std()-Z"          
####[25] "tBodyGyroJerk-mean()-X"      "tBodyGyroJerk-mean()-Y"     
####[27] "tBodyGyroJerk-mean()-Z"      "tBodyGyroJerk-std()-X"      
####[29] "tBodyGyroJerk-std()-Y"       "tBodyGyroJerk-std()-Z"      
####[31] "tBodyAccMag-mean()"          "tBodyAccMag-std()"          
####[33] "tGravityAccMag-mean()"       "tGravityAccMag-std()"       
####[35] "tBodyAccJerkMag-mean()"      "tBodyAccJerkMag-std()"      
####[37] "tBodyGyroMag-mean()"         "tBodyGyroMag-std()"         
####[39] "tBodyGyroJerkMag-mean()"     "tBodyGyroJerkMag-std()"     
####[41] "fBodyAcc-mean()-X"           "fBodyAcc-mean()-Y"          
####[43] "fBodyAcc-mean()-Z"           "fBodyAcc-std()-X"           
####[45] "fBodyAcc-std()-Y"            "fBodyAcc-std()-Z"           
####[47] "fBodyAccJerk-mean()-X"       "fBodyAccJerk-mean()-Y"      
####[49] "fBodyAccJerk-mean()-Z"       "fBodyAccJerk-std()-X"       
####[51] "fBodyAccJerk-std()-Y"        "fBodyAccJerk-std()-Z"       
####[53] "fBodyGyro-mean()-X"          "fBodyGyro-mean()-Y"         
####[55] "fBodyGyro-mean()-Z"          "fBodyGyro-std()-X"          
####[57] "fBodyGyro-std()-Y"           "fBodyGyro-std()-Z"          
####[59] "fBodyAccMag-mean()"          "fBodyAccMag-std()"          
####[61] "fBodyBodyAccJerkMag-mean()"  "fBodyBodyAccJerkMag-std()"  
####[63] "fBodyBodyGyroMag-mean()"     "fBodyBodyGyroMag-std()"     
####[65] "fBodyBodyGyroJerkMag-mean()" "fBodyBodyGyroJerkMag-std()" 
### Column 4: Is the mean of all of the different observations of the measurement for the given Subject and Activity

## Please see my read.me file to understand the processing that yielded this tidy dataset

