# read the data and store in local variables
testy <- read.table("test/y_test.txt", colClasses = "factor"); # test activity
testX <- read.table("test/X_test.txt"); # test data
trainX <- read.table("train/X_train.txt"); #train data
trainy <- read.table("train/y_train.txt", colClasses = "factor"); #train activity
datcol <- read.table("features.txt", colClasses = "character"); #data column names
datcol <- datcol[,2]; #keep only the column names
testsub <- read.table("test/subject_test.txt"); #subjects for test samples
trainsub <- read.table("train/subject_train.txt"); #subjects for train samples
print("Data stored locally")

#-----------------------------
# Keep only means and standard deviation of measurements (reduce to 86 measures 
#per sample)
testX <- testX[,grep("[M,m]ean|std",datcol)]; 
trainX <- trainX[,grep("[M,m]ean|std",datcol)];
namescol <- datcol[grep("[M,m]ean|std",datcol)];
print("Keeping only standard deviations and means")

#-----------------------------
# Combine into a single data frame

DF<- data.frame(rbind(trainsub,testsub),rbind(trainy,testy),rbind(trainX,testX));
colnames(DF) <- c("Subject","Activity", namescol);
print("Data combined into a single tidy data frame named DF")

#-------------------------------
# Convert activity levels from a number to a descriptive names
levels(DF[,"Activity"]) <- list(WALKING = "1", WALKING_UPSTAIRS = "2", 
                              WALKING_DOWNSTAIRS = "3",SITTING ="4",
                              STANDING = "5", LAYING = "6")
print("Activity labels are now descriptive")

#------------------------------
#Create a second data frame with the average of each variable for each activity 
#and each subject in DF.
tidy2 <- aggregate(DF[,3:88], list(DF$Subject,DF$Activity), mean)
#Rename columns
names(tidy2)[1:2]<-c("Subject", "Activity")
print("A tidy data set named tidy2 with the means by activity and subject was made.")

#--------------------------
#Save data to file
write.table(tidy2, './tidyData.txt',row.names=TRUE,sep='\t')