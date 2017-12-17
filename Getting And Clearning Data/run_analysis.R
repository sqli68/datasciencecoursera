#download and load pacakge for using melt and cast 
install.packages("reshape")
library(reshape)

#Read feature data set
features <-read.table("UCI HAR Dataset\\features.txt")

#Read train data into data set
subject_train<- read.table("UCI HAR Dataset\\train\\subject_train.txt")
X_train <- read.table("UCI HAR Dataset\\train\\X_train.txt")
Y_train <- read.table("UCI HAR Dataset\\train\\y_train.txt")

#set train data set column names
names(subject_train)<- c("SubjectID")
names(X_train)<-features$V2
names(Y_train)<-c("Activity")

#Read test data into data set
subject_test<-read.table("UCI HAR Dataset\\test\\subject_test.txt")
X_test <-read.table("UCI HAR Dataset\\test\\X_test.txt")
Y_test <-read.table("UCI HAR Dataset\\test\\Y_test.txt")

#set test data set column names
names(subject_test)<- c("SubjectID")
names(X_test)<-features$V2
names(Y_test)<-c("Activity")

#Merge tWO data sets into one target data set
train <-cbind(subject_train, Y_train, X_train)
test <-cbind(subject_test, Y_test, X_test)
dt <- rbind(train, test, use.names=TRUE)
  
#select measures of mean and std
mean_std_dt <- dt[,  c( 1,2, grep("-mean\\(\\)|-std\\(\\)", names(dt))), ]

#Set descriptive activity names to the target data set
activity_names <- read.table("UCI HAR Dataset\\activity_labels.txt")
mean_std_dt$Activity <- factor(mean_std_dt$Activity, labels=activity_names$V2)


#first get the measure variable names
measure_names<- names(mean_std_dt)[c(3:length(names(mean_std_dt)))]

#melt the data set 
melted_dt <- melt(mean_std_dt, id.vars=c("SubjectID", "Activity"))

#Average each variable for each activity and each subject
tidy_dt <- cast(melted_dt, SubjectID + Activity ~ variable, mean)

#dump the resulted data set to a file called tidy_AveData.txt
write.table(tidy_dt, file="tidy_data.txt", quote=F, sep = ",", row.names=FALSE)


