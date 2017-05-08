install.packages("reshape2")
library(reshape2)
library(plyr)
rm(list = ls())

### Download and unzip the data
setwd("D:/JHU/Getting and Cleaning the data")
if(!file.exists("./project")){dir.create("./project")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./project/Data.zip")

unzip(zipfile="./project/Data.zip",exdir="./project")

#------------------------------------------------------------------------------------------------------#
# 1.Merging the training and the test sets to create one data set:
#------------------------------------------------------------------------------------------------------#
# 1.1 Read feature data:
features <- read.table("./project/UCI HAR Dataset/features.txt")

# 1.2 Read traing data set and assign training dataset column names
xTrain <- read.table("./project/UCI HAR Dataset/train/X_train.txt")
yTrain <- read.table("./project/UCI HAR Dataset/train/y_train.txt")
subjectTrain <- read.table("./project/UCI HAR Dataset/train/subject_train.txt")

colnames(xTrain) <- features[,2] 
colnames(yTrain) <-"activityId"
colnames(subjectTrain) <- "subjectId"

#1.3 testing data set and assign testing dataset column names
xTest <- read.table("./project/UCI HAR Dataset/test/X_test.txt")
yTest <- read.table("./project/UCI HAR Dataset/test/y_test.txt")
subjectTest <- read.table("./project/UCI HAR Dataset/test/subject_test.txt")

colnames(xTest) <- features[,2] 
colnames(yTest) <- "activityId"
colnames(subjectTest) <- "subjectId"

#1.4 Merge training and testing dataset
train <- cbind(yTrain, subjectTrain, xTrain)
test <- cbind(yTest, subjectTest, xTest)
dataset <- rbind(train, test)

#------------------------------------------------------------------------------------------------------#
# 2.Extracting only the measurements on the mean and standard deviation for each measurement
#------------------------------------------------------------------------------------------------------#
#2.1 Create column index for activityId, subjectId, mean and standard deviation:
colNames <- colnames(dataset)
colNames
colInd <- (grepl("activityId",colNames) | grepl("subjectId",colNames) | 
          grepl("mean..",colNames)  | grepl("std..",colNames) )

#2.2 Only extract the matching columns and using those matching columns to create a dataset "b"
b <- dataset[, colInd == TRUE]

#------------------------------------------------------------------------------------------------------#
#3 Use descriptive  activity names to name the activities in the data set
#------------------------------------------------------------------------------------------------------#
# 3.1 Read activity data:
activityData = read.table("./project/UCI HAR Dataset/activity_labels.txt")
# 3.2 Assign column name for activityData
colnames(activityData) <- c('activityId','activityType')
#3.3 merge dataset "b" (in step 2.2) and data "activityData" (in step 3.1)
final <- merge(b, activityData, by='activityId', all.x=TRUE)

#------------------------------------------------------------------------------------------------------#
# 4. Appropriately label the data set with descriptive activity names. 
#------------------------------------------------------------------------------------------------------#

colnames(final) <- gsub("^t", "Time", colnames(final))
colnames(final) <- gsub("^f", "Frequency", colnames(final))
colnames(final) <- gsub("-mean\\(\\)", "Mean", colnames(final))
colnames(final) <- gsub("-std\\(\\)", "StdDev", colnames(final))
colnames(final) <- gsub("BodyBody", "Body", colnames(final))
colnames(final) <- gsub("\\()","",colnames(final))


# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable 
#    for each activity and each subject.

final_melt <- melt(final, id = c("subjectId", "activityId", "activityType"))
final_stat <- dcast(final_melt, subjectId + activityId + activityType~ variable, mean)

write.table(final_stat, "./project/tidy_data.txt" ,row.names=TRUE,sep='\t')
