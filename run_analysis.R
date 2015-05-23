#============================================================================
## File Name : run_analysis.R
## Create one R script called run_analysis.R that does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names.
## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#============================================================================

# Load packages
#============================================================================
if(!is.element("reshape2", installed.packages()[,1])){
        install.packages("reshape2")
}
library(reshape2)
library(data.table)
library(plyr)

# Download Data and Reset the Working Directory
#============================================================================

fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dir.PATH <- "./UCI HAR dataset"
fileZIP <- "samsung.zip"

if(!dir.exists(dir.PATH)){
        if(!file.exists(fileZIP)){
                download.file(fileURL, fileZIP)
        }
        unzip("./samsung.zip")
        file.remove(fileZIP)
}

setwd(dir.PATH)

#load feature and activity names. Also create filters for mean and std.dev
#============================================================================
activity_labels <- read.table("./activity_labels.txt",col.names=c("activity","activity_label"))
features <- read.table("./features.txt",col.names=c("col","feature"))
features.filter <- grep("std|mean", features$feature)

#load test data
#============================================================================
subject_test <- read.table("./test/subject_test.txt",col.names=c("subject"))
subject_test$Group <- "Test"
X_test <- read.table("./test/x_test.txt",col.names=features$feature)[,features.filter]
y_test <- join(read.table("./test/y_test.txt",col.names=c("activity")),activity_labels,by="activity",type="left")
grp_test <- rep("Test",nrow(subject_test))
#load train data
#============================================================================
subject_train <- read.table("./train/subject_train.txt",col.names=c("subject"))
subject_train$Group <- "Train"
X_train <- read.table("./train/x_train.txt",col.names=features$feature)[,features.filter]
y_train <- join(read.table("./train/y_train.txt",col.names=c("activity")),activity_labels,by="activity",type="left")

#merge all test and train rows
#============================================================================
merged <- rbind(cbind(subject_train,y_train,X_train),
                    cbind(subject_test,y_test,X_test)
                    )

#aggregate by subjectid and activity
#============================================================================
TidyData<-ddply(merged, .(subject,activity_label) ,numcolwise(mean))


write.table(TidyData, file="./tidy.txt", sep="\t", row.names=FALSE)


