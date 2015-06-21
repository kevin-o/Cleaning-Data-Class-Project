---
# title: "CodeBook"
# author: "Kevin O"
# date: "June 21, 2015"

# This CodeBook.md file describes the structure of the tidy dataset that I submitted for the course project

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

