Data Origin:
A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Files are space separated tables and vectors.
More information on the assignment and the files used is contained in the ReadMe.md file.
-------------------------
The program run_analysis returns two tidy data sets:
DF
The test and train measurements were combined (X_train.txt and X_test.txt) with the combined correspoinding subject and activity levels (subject_train.txt and subject_test.txt,  y_train.txt and y_test.txt).  The column names used were contained in the file teatures.txt.
Only columns containing the characters "mean", "Mean" and "std" were kept.
Levels for activity (train and test y) were converted to meaningful descriptions using activity_labels.txt
tidy2
This data frame contains the average of each variable for each activity and each subject in DF.

-------------------------
Data and Variables
DF = Data frame with tidy data (only mean and standard deviation values).
tidy2 = Data frame with the average of each variable for each activity and each subject in DF.
Columns:
 [1] "Subject", Factor numerical levels between 1 and 30.  70% of "Subjects" came from the train file and 30% from the 
 [2] "Activity", Factor with the following 6 levels: 
	1 WALKING
	2 WALKING_UPSTAIRS
	3 WALKING_DOWNSTAIRS
	4 SITTING
	5 STANDING
	6 LAYING                        
The next 86 columns contain measurements of the sensor signals.  Units, range and other details can be obtained on the links above and in the file features_info.txt
 [3] "tBodyAcc-mean()-X"                    
 [4] "tBodyAcc-mean()-Y"                   
 [5] "tBodyAcc-mean()-Z"                    
 [6] "tBodyAcc-std()-X"                    
 [7] "tBodyAcc-std()-Y"                     
 [8]"tBodyAcc-std()-Z"                    
 [9] "tGravityAcc-mean()-X"                 
[10]"tGravityAcc-mean()-Y"                
[11] "tGravityAcc-mean()-Z"                 
 [12] "tGravityAcc-std()-X"                 
[13] "tGravityAcc-std()-Y"                  
 [14] "tGravityAcc-std()-Z"                 
[15] "tBodyAccJerk-mean()-X"                
 [16] "tBodyAccJerk-mean()-Y"               
[17] "tBodyAccJerk-mean()-Z"                
 [18] "tBodyAccJerk-std()-X"                
[19] "tBodyAccJerk-std()-Y"                 
[20]"tBodyAccJerk-std()-Z"                
[21] "tBodyGyro-mean()-X"                   
[22] "tBodyGyro-mean()-Y"                  
[23] "tBodyGyro-mean()-Z"                   
[24] "tBodyGyro-std()-X"                   
[25] "tBodyGyro-std()-Y"                    
[26] "tBodyGyro-std()-Z"                   
[27] "tBodyGyroJerk-mean()-X"               
[28] "tBodyGyroJerk-mean()-Y"              
[29] "tBodyGyroJerk-mean()-Z"               
[30] "tBodyGyroJerk-std()-X"               
[31] "tBodyGyroJerk-std()-Y"                
[32] "tBodyGyroJerk-std()-Z"               
[33] "tBodyAccMag-mean()"                   
[34] "tBodyAccMag-std()"                   
[35] "tGravityAccMag-mean()"                
[36] "tGravityAccMag-std()"                
[37] "tBodyAccJerkMag-mean()"               
[38] "tBodyAccJerkMag-std()"               
[39] "tBodyGyroMag-mean()"                  
[40] "tBodyGyroMag-std()"                  
[41] "tBodyGyroJerkMag-mean()"              
[42] "tBodyGyroJerkMag-std()"              
[43] "fBodyAcc-mean()-X"                    
[44] "fBodyAcc-mean()-Y"                   
[45] "fBodyAcc-mean()-Z"                    
[46] "fBodyAcc-std()-X"                    
[47] "fBodyAcc-std()-Y"                     
[48] "fBodyAcc-std()-Z"                    
[49] "fBodyAcc-meanFreq()-X"                
[50] "fBodyAcc-meanFreq()-Y"               
[51] "fBodyAcc-meanFreq()-Z"               
[52] "fBodyAccJerk-mean()-X"               
[53] "fBodyAccJerk-mean()-Y"                
[54] "fBodyAccJerk-mean()-Z"               
[55] "fBodyAccJerk-std()-X"                 
[56] "fBodyAccJerk-std()-Y"                
[57] "fBodyAccJerk-std()-Z"                 
[58] "fBodyAccJerk-meanFreq()-X"           
[59] "fBodyAccJerk-meanFreq()-Y"            
[60] "fBodyAccJerk-meanFreq()-Z"           
[61] "fBodyGyro-mean()-X"                   
[62] "fBodyGyro-mean()-Y"                  
[63] "fBodyGyro-mean()-Z"                   
[64] "fBodyGyro-std()-X"                   
[65] "fBodyGyro-std()-Y"                    
[66] "fBodyGyro-std()-Z"                   
[67] "fBodyGyro-meanFreq()-X"               
[68] "fBodyGyro-meanFreq()-Y"              
[69] "fBodyGyro-meanFreq()-Z"               
[70] "fBodyAccMag-mean()"                  
[71] "fBodyAccMag-std()"                    
[72] "fBodyAccMag-meanFreq()"              
[73] "fBodyBodyAccJerkMag-mean()"            
[74] "fBodyBodyAccJerkMag-std()"           
[75] "fBodyBodyAccJerkMag-meanFreq()"       
 [76] "fBodyBodyGyroMag-mean()"             
[77] "fBodyBodyGyroMag-std()"               
[78] "fBodyBodyGyroMag-meanFreq()"         
[79] "fBodyBodyGyroJerkMag-mean()"          
[80] "fBodyBodyGyroJerkMag-std()"          
[81] "fBodyBodyGyroJerkMag-meanFreq()"      
[82] "angle(tBodyAccMean,gravity)"         
[83] "angle(tBodyAccJerkMean),gravityMean)" 
[84] "angle(tBodyGyroMean,gravityMean)"    
[85] "angle(tBodyGyroJerkMean,gravityMean)" 
 [86] "angle(X,gravityMean)"                
[87] "angle(Y,gravityMean)"                 
[88] "angle(Z,gravityMean)"     