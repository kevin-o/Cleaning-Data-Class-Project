# Cleaning-Data-Class-Project
# This file describes the processing steps for creating the tidy data set presented as the solution to the course project
# The dataset presented in KAO_Project_TidyData.txt is a skinny and long dataset in which there are four columns which are desribed in the CodeBook.md.
# The data is processed as described below:
#    1.  A dataframe for the "Test" Subjects is first created with Subject, Activity, and only the measurements with either "mean()" or "std()" in their titles
#   2.   Then a dataframe of the "Training" Subjects is created with Subject, Activity, and only the measurements with either "mean()" or "std()" in their titles
#   3.  The two dataframes are concatenated to the form the DATA dataframe.
#   4.  The data frame is then sorted by Subject and Activity
#   5.  I then melt the Data dataframe to make it narrow and skinny (DataMelt) 
#   6.  I then take the mean of the each measurement over each Subject and each Activity
#   7.  That dataframe is also wide, so i melt it again (DataAvgMelt) to create a long and skinny dataframe (which seems to be easier to read, at least to me) and then write it out to a text file.
#