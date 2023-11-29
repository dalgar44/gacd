The data set produced in this project contains a single record for each subject and activity from the original data provided in the "Human Activity Recognition Using Smartphones" project (https://archive.ics.uci.edu/dataset/240/human+activity+recognition+using+smartphones).

Each record contains the mean of each "mean" and "standard deviation" feature found in the original data set.

The resulting data set can be found in the file data/mean_bysubject_and_activity.csv with the following features:
  subject - numeric code of subject performing activity
  activity - descriptive name of activity performed
  
For each subject/activity record, the remaining features listed below contain the mean of corresponding feature from the combined test and training data from the original data set:
  tBodyAcc-mean()-X                   
  tBodyAcc-mean()-Y                   
  tBodyAcc-mean()-Z                   
  tBodyAcc-std()-X                    
  tBodyAcc-std()-Y                    
  tBodyAcc-std()-Z                    
  tGravityAcc-mean()-X                
  tGravityAcc-mean()-Y                
  tGravityAcc-mean()-Z                
  tGravityAcc-std()-X                 
  tGravityAcc-std()-Y                 
  tGravityAcc-std()-Z                 
  tBodyAccJerk-mean()-X               
  tBodyAccJerk-mean()-Y               
  tBodyAccJerk-mean()-Z               
  tBodyAccJerk-std()-X                
  tBodyAccJerk-std()-Y                
  tBodyAccJerk-std()-Z                
  tBodyGyro-mean()-X                  
  tBodyGyro-mean()-Y                  
  tBodyGyro-mean()-Z                  
  tBodyGyro-std()-X                   
  tBodyGyro-std()-Y                   
  tBodyGyro-std()-Z                   
  tBodyGyroJerk-mean()-X              
  tBodyGyroJerk-mean()-Y              
  tBodyGyroJerk-mean()-Z              
  tBodyGyroJerk-std()-X               
  tBodyGyroJerk-std()-Y               
  tBodyGyroJerk-std()-Z               
  tBodyAccMag-mean()                  
  tBodyAccMag-std()                   
  tGravityAccMag-mean()               
  tGravityAccMag-std()                
  tBodyAccJerkMag-mean()              
  tBodyAccJerkMag-std()               
  tBodyGyroMag-mean()                 
  tBodyGyroMag-std()                  
  tBodyGyroJerkMag-mean()             
  tBodyGyroJerkMag-std()              
  fBodyAcc-mean()-X                   
  fBodyAcc-mean()-Y                   
  fBodyAcc-mean()-Z                   
  fBodyAcc-std()-X                    
  fBodyAcc-std()-Y                    
  fBodyAcc-std()-Z                    
  fBodyAcc-meanFreq()-X               
  fBodyAcc-meanFreq()-Y               
  fBodyAcc-meanFreq()-Z               
  fBodyAccJerk-mean()-X               
  fBodyAccJerk-mean()-Y               
  fBodyAccJerk-mean()-Z               
  fBodyAccJerk-std()-X                
  fBodyAccJerk-std()-Y                
  fBodyAccJerk-std()-Z                
  fBodyAccJerk-meanFreq()-X           
  fBodyAccJerk-meanFreq()-Y           
  fBodyAccJerk-meanFreq()-Z           
  fBodyGyro-mean()-X                  
  fBodyGyro-mean()-Y                  
  fBodyGyro-mean()-Z                  
  fBodyGyro-std()-X                   
  fBodyGyro-std()-Y                   
  fBodyGyro-std()-Z                   
  fBodyGyro-meanFreq()-X              
  fBodyGyro-meanFreq()-Y              
  fBodyGyro-meanFreq()-Z              
  fBodyAccMag-mean()                  
  fBodyAccMag-std()                   
  fBodyAccMag-meanFreq()              
  fBodyBodyAccJerkMag-mean()          
  fBodyBodyAccJerkMag-std()           
  fBodyBodyAccJerkMag-meanFreq()      
  fBodyBodyGyroMag-mean()             
  fBodyBodyGyroMag-std()              
  fBodyBodyGyroMag-meanFreq()         
  fBodyBodyGyroJerkMag-mean()         
  fBodyBodyGyroJerkMag-std()          
  fBodyBodyGyroJerkMag-meanFreq()     
  angle(tBodyAccMean,gravity)         
  angle(tBodyAccJerkMean),gravityMean)
  angle(tBodyGyroMean,gravityMean)    
  angle(tBodyGyroJerkMean,gravityMean)
  angle(X,gravityMean)                
  angle(Y,gravityMean)                
  angle(Z,gravityMean)