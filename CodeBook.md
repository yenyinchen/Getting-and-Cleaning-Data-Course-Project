## Introduction
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

## Variables
### Identifiers
subjectId: The ID of the 30 volunteers 
activityId: ID of six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)                        
activityType: description of six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)                   

### Features
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals TimeAcc-XYZ and TimeGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAcc-XYZ and TimeGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccJerk-XYZ and TimeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccMag, TimeGravityAccMag, TimeBodyAccJerkMag, TimeBodyGyroMag, TimeBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyBodyAcc-XYZ, FrequencyBodyAccJerk-XYZ, FrequencyBodyGyro-XYZ, FrequencyBodyAccJerkMag, FrequencyBodyGyroMag, FrequencyBodyGyroJerkMag. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 
mean(): Mean value
StdDev: Standard deviation

## There are 79 measurement variables:
[4] "TimeBodyAcc -X"                    "TimeBodyAccMean-Y"                 "TimeBodyAccMean-Z"                
[7] "TimeBodyAccStdDev-X"               "TimeBodyAccStdDev-Y"               "TimeBodyAccStdDev-Z"              
[10] "TimeGravityAccMean-X"              "TimeGravityAccMean-Y"              "TimeGravityAccMean-Z"             
[13] "TimeGravityAccStdDev-X"            "TimeGravityAccStdDev-Y"            "TimeGravityAccStdDev-Z"           
[16] "TimeBodyAccJerkMean-X"             "TimeBodyAccJerkMean-Y"             "TimeBodyAccJerkMean-Z"            
[19] "TimeBodyAccJerkStdDev-X"           "TimeBodyAccJerkStdDev-Y"           "TimeBodyAccJerkStdDev-Z"          
[22] "TimeBodyGyroMean-X"                "TimeBodyGyroMean-Y"                "TimeBodyGyroMean-Z"               
[25] "TimeBodyGyroStdDev-X"              "TimeBodyGyroStdDev-Y"              "TimeBodyGyroStdDev-Z"             
[28] "TimeBodyGyroJerkMean-X"            "TimeBodyGyroJerkMean-Y"            "TimeBodyGyroJerkMean-Z"           
[31] "TimeBodyGyroJerkStdDev-X"          "TimeBodyGyroJerkStdDev-Y"          "TimeBodyGyroJerkStdDev-Z"         
[34] "TimeBodyAccMagMean"                "TimeBodyAccMagStdDev"              "TimeGravityAccMagMean"            
[37] "TimeGravityAccMagStdDev"           "TimeBodyAccJerkMagMean"            "TimeBodyAccJerkMagStdDev"         
[40] "TimeBodyGyroMagMean"               "TimeBodyGyroMagStdDev"             "TimeBodyGyroJerkMagMean"          
[43] "TimeBodyGyroJerkMagStdDev"         "FrequencyBodyAccMean-X"            "FrequencyBodyAccMean-Y"           
[46] "FrequencyBodyAccMean-Z"            "FrequencyBodyAccStdDev-X"          "FrequencyBodyAccStdDev-Y"         
[49] "FrequencyBodyAccStdDev-Z"          "FrequencyBodyAcc-meanFreq-X"       "FrequencyBodyAcc-meanFreq-Y"      
[52] "FrequencyBodyAcc-meanFreq-Z"       "FrequencyBodyAccJerkMean-X"        "FrequencyBodyAccJerkMean-Y"       
[55] "FrequencyBodyAccJerkMean-Z"        "FrequencyBodyAccJerkStdDev-X"      "FrequencyBodyAccJerkStdDev-Y"     
[58] "FrequencyBodyAccJerkStdDev-Z"      "FrequencyBodyAccJerk-meanFreq-X"   "FrequencyBodyAccJerk-meanFreq-Y"  
[61] "FrequencyBodyAccJerk-meanFreq-Z"   "FrequencyBodyGyroMean-X"           "FrequencyBodyGyroMean-Y"          
[64] "FrequencyBodyGyroMean-Z"           "FrequencyBodyGyroStdDev-X"         "FrequencyBodyGyroStdDev-Y"        
[67] "FrequencyBodyGyroStdDev-Z"         "FrequencyBodyGyro-meanFreq-X"      "FrequencyBodyGyro-meanFreq-Y"     
[70] "FrequencyBodyGyro-meanFreq-Z"      "FrequencyBodyAccMagMean"           "FrequencyBodyAccMagStdDev"        
[73] "FrequencyBodyAccMag-meanFreq"      "FrequencyBodyAccJerkMagMean"       "FrequencyBodyAccJerkMagStdDev"    
[76] "FrequencyBodyAccJerkMag-meanFreq"  "FrequencyBodyGyroMagMean"          "FrequencyBodyGyroMagStdDev"       
[79] "FrequencyBodyGyroMag-meanFreq"     "FrequencyBodyGyroJerkMagMean"      "FrequencyBodyGyroJerkMagStdDev"   
[82] "FrequencyBodyGyroJerkMag-meanFreq"

