## This script is written for the course project in getting and cleaning data
## first read in data from files
## I'm assuming the working directory is pointing to UCI HAR Dataset directory
library(data.table)
library(Hmisc)
library(reshape2)

activities <- fread("activity_labels.txt")
features <- fread("features.txt")
# Now identify columns representing the measurements with -mean() and -std() in them
selected_measurements <- grepl("mean()",features$V2, fixed = TRUE) | grepl("std()",features$V2,fixed = TRUE)

# First work with the training data, building the dataframe with proper column headers
X_test_data <- read.table("test/X_test.txt")
colnames(X_test_data) <- features$V2

# Keep only the columns of interest
X_test_data <- X_test_data[,selected_measurements]

# Read in activities, and set as factors 
Y_test_data <- read.table("test/y_test.txt")
Y_test_data <- as.data.frame(factor(Y_test_data[,1],labels = activities$V2))
colnames(Y_test_data) <- "Activity"


subject_test_data <- as.data.frame(read.table("test/subject_test.txt"))
colnames(subject_test_data) <- "Subject"
Data_test <- cbind(subject_test_data,Y_test_data)
Data_test <- cbind(Data_test,X_test_data)


# Now read  training data

X_train_data <- read.table("train/X_train.txt")
colnames(X_train_data) <- features$V2

# Take only the columns of interest
X_train_data <- X_train_data[,selected_measurements]

# Read in activities and set as factors
Y_train_data <- read.table("train/y_train.txt")
Y_train_data <- as.data.frame(factor(Y_train_data[,1],labels = activities$V2))
colnames(Y_train_data) <- "Activity"

# Read in subject data
subject_train_data <- as.data.frame(read.table("train/subject_train.txt"))
colnames(subject_train_data) <- "Subject"
Data_train <- cbind(subject_train_data,Y_train_data)
Data_train <- cbind(Data_train,X_train_data)

# Now append the training and testing dataframes into one dataframe
Data <- rbind(Data_test,Data_train)

# Now sort by subject and activity
Data <- arrange(Data, Subject, Activity)

#Reshape the data set into a tall skinny dataset
DataMelt <- melt(Data, id = c("Subject","Activity"), measure.vars = colnames(Data)[3:68])
# For every subject and activity, take the mean of each obsevation
DataAvg <- dcast (DataMelt, Subject + Activity ~ variable, mean)
# Now create a tall skinny dataset of the averages
DataAvgMelt <- melt(DataAvg, id = c("Subject","Activity"), measure.vars = colnames(DataAvg)[3:68])
#And write to a file
write.table(DataAvgMelt, file = "KAO_Project_TidyData.txt", row.names = FALSE)
