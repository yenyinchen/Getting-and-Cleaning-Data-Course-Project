# Getting-and-Cleaning-Data-Course-Project

Download and unzip the data


## 1.Merging the training and the test sets to create one data set:

* 1.1 Read feature data
* 1.2 Read training data set and assign training dataset column names
* 1.3 Read testing data set and assign testing dataset column names
* 1.4 Merge training and testing dataset

## 2.Extracting only the measurements on the mean and standard deviation for each measurement

* 2.1 Create column index for activityId, subjectId, mean, and standard deviation
* 2.2 Only extract the matching columns and using those matching columns to create a dataset "b"



## 3 Use descriptive activity names to name the activities in the data set
* 3.1 Read activity data
* 3.2 Assign column name for activityData
* 3.3 merge dataset "b" (in step 2.2) and data "activityData" (in step 3.1)

## 4. Appropriately label the data set with descriptive activity names. 

* Change "t" to "Time"
* Change "f" to "Frequency"
* Change "-mean()" to "Mean"
* Change "-std()" to "StdDev"
* Change "BodyBody" to "Body",


## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

* The end result is shown in the file tidy_data.txt

