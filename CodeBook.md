## Introduction
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

## Variables
### Identifiers
subjectId: The ID of the 30 volunteers 
activityId: ID of six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)                        
activityType: description of six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)                   

### Features
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals TimeAcc-XYZ and TimeGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAcc-XYZ and TimeGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. The units are radians/second.

The set of variables that were estimated from these signals are: 
mean: Mean value
StdDev: Standard deviation

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. The units are radians/second.

*TimeBodyAcc-X                    
*TimeBodyAccMean-Y                 
*TimeBodyAccMean-Z                
*TimeBodyAccStdDev-X              
*TimeBodyAccStdDev-Y               
*TimeBodyAccStdDev-Z
*TimeGravityAccMean-X             
*TimeGravityAccMean-Y              
*TimeGravityAccMean-Z             
*TimeGravityAccStdDev-X           
*TimeGravityAccStdDev-Y            
*TimeGravityAccStdDev-Z 



Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccJerk-XYZ and TimeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccMag, TimeGravityAccMag, TimeBodyAccJerkMag, TimeBodyGyroMag, TimeBodyGyroJerkMag). The units are radians/second.

TimeBodyAccJerkMean-X             
TimeBodyAccJerkMean-Y             
TimeBodyAccJerkMean-Z            
TimeBodyAccJerkStdDev-X
TimeBodyAccJerkStdDev-Y
TimeBodyAccJerkStdDev-Z          
TimeBodyGyroMean-X
TimeBodyGyroMean-Y
TimeBodyGyroMean-Z
TimeBodyGyroStdDev-X
TimeBodyGyroStdDev-Y
TimeBodyGyroStdDev-Z
TimeBodyGyroJerkMean-X
TimeBodyGyroJerkMean-Y
TimeBodyGyroJerkMean-Z
TimeBodyGyroJerkStdDev-X
TimeBodyGyroJerkStdDev-Y
TimeBodyGyroJerkStdDev-Z    
TimeBodyAccMagMean
TimeBodyAccMagStdDev
TimeGravityAccMagMean
TimeGravityAccMagStdDev
TimeBodyAccJerkMagMean
TimeBodyAccJerkMagStdDev
TimeBodyGyroMagMean
TimeBodyGyroMagStdDev
TimeBodyGyroJerkMagMean





Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyBodyAcc-XYZ, FrequencyBodyAccJerk-XYZ, FrequencyBodyGyro-XYZ, FrequencyBodyAccJerkMag, FrequencyBodyGyroMag, FrequencyBodyGyroJerkMag. The units are hertz

TimeBodyGyroJerkMagStdDev
FrequencyBodyAccMean-X
FrequencyBodyAccMean-Y
FrequencyBodyAccMean-Z            
FrequencyBodyAccStdDev-X
FrequencyBodyAccStdDev-Y
FrequencyBodyAccStdDev-Z
FrequencyBodyAcc-meanFreq-X
FrequencyBodyAcc-meanFreq-Y      
FrequencyBodyAcc-meanFreq-Z       
FrequencyBodyAccJerkMean-X        
FrequencyBodyAccJerkMean-Y       
FrequencyBodyAccJerkMean-Z
FrequencyBodyAccJerkStdDev-X
FrequencyBodyAccJerkStdDev-Y     
FrequencyBodyAccJerkStdDev-Z
FrequencyBodyAccJerk-meanFreq-X
FrequencyBodyAccJerk-meanFreq-Y
FrequencyBodyAccJerk-meanFreq-Z
FrequencyBodyGyroMean-X           
FrequencyBodyGyroMean-Y          
FrequencyBodyGyroMean-Z           
FrequencyBodyGyroStdDev-X         
FrequencyBodyGyroStdDev-Y
FrequencyBodyGyroStdDev-Z
FrequencyBodyGyro-meanFreq-X
FrequencyBodyGyro-meanFreq-Y     
FrequencyBodyGyro-meanFreq-Z      
FrequencyBodyAccMagMean           
FrequencyBodyAccMagStdDev        
FrequencyBodyAccMag-meanFreq      
FrequencyBodyAccJerkMagMean       
FrequencyBodyAccJerkMagStdDev    
FrequencyBodyAccJerkMag-meanFreq
FrequencyBodyGyroMagMean
FrequencyBodyGyroMagStdDev       
FrequencyBodyGyroMag-meanFreq
FrequencyBodyGyroJerkMagMean
FrequencyBodyGyroJerkMagStdDev   
FrequencyBodyGyroJerkMag-meanFreq


