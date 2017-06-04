
## Programmer: Jacques du Plessis
## Date: 2017/06/03
## Title: Getting and cleaning data course project
## Descriptions: Wearable computing data preparation and cleansing
## References: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#
## References: http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/
## Source data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
## Info: This script was coded on a windows 10 configured PC

## Instructions:
## -------------
## Merges the training and the test sets to create one data set.
## Extracts only the measurements on the mean and standard deviation for each measurement.
## Uses descriptive activity names to name the activities in the data set
## Appropriately labels the data set with descriptive variable names.
## From the data set in step 4, creates a second, independent tidy data set with 
## the average of each variable for each activity and each subject.
## -------------

## setwd("c:\\Development\\R\\Coursera\\Getting_data\\project")

## -------------
## Unit testng
## -------------
## Set working directory
## rm(list=ls())
## select all the text in the script and press Run 


## -------------------------------------
## 1. Read the test data with read.table.
## Then apprend the test and training 
## datasets via rbind as they have 
## exactly the same format  
## -------------------------------------

## Load the train and test data into data frames 
mytestdata = read.table(".\\UCI HAR Dataset\\test\\X_test.txt") 
mytraindata = read.table(".\\UCI HAR Dataset\\train\\X_train.txt") 

mycombineddata =  rbind(mytestdata,mytraindata) 

##load the dplyr library
library(dplyr)
combineddf <- tbl_df(mycombineddata)


## ----------------------------------------------
## 2. Extracts only the measurements on the mean 
##    and standard deviation for each measurement.
## ----------------------------------------------

## Load the variables names
myfeatures = read.table(".\\UCI HAR Dataset\\features.txt")

## Select only the variables which contains mean( or std(
selectedcolumns <- grep("mean\\(|std\\(",myfeatures$V2,value = TRUE)

names(combineddf) <- myfeatures$V2
combineddf <- combineddf[,selectedcolumns]

## Load the test and train subject data
mytestsubjects = read.table(".\\UCI HAR Dataset\\test\\subject_test.txt")
mytrainsubjects = read.table(".\\UCI HAR Dataset\\train\\subject_train.txt")

## merge the subject datasets via rbind
mycombinedsubjects <-  rbind(mytestsubjects,mytrainsubjects) 

## Add the subject's to the data frames
combineddf <- mutate(combineddf,subject = as.integer(mycombinedsubjects$V1))


## ----------------------------------------------
## 3. Uses descriptive activity names to name 
## the activities in the data set
## ----------------------------------------------


## Load the test and train activity label id's
mytestlabels = read.table(".\\UCI HAR Dataset\\test\\y_test.txt")
mytrainlabels = read.table(".\\UCI HAR Dataset\\train\\y_train.txt")

## Load the activity label names
myactivities = read.table(".\\UCI HAR Dataset\\activity_labels.txt")

## merge the activity id and label 
mytestactivities = merge(mytestlabels,myactivities)
mytrainactivities = merge(mytrainlabels,myactivities)

## merge the activity datasets via rbind
mycombinedactivities <-  rbind(mytestactivities,mytrainactivities)


## Add the activity labels the data frames
combineddf <- mutate(combineddf,activity = mycombinedactivities$V2)


## ----------------------------------------------
## 4. Appropriately labels the data set with 
##    descriptive variable names
## ----------------------------------------------

## convert all column headings to lowercase
names(combineddf) <- tolower(names(combineddf))

## replace t abbreviation with time
names(combineddf) <- sub("^t","time",names(combineddf))

## replace f abbreviation with frequency
names(combineddf) <- sub("^f","frequency",names(combineddf))

## replace acc abbreviation with acceleration
names(combineddf) <- sub("acc","acceleration",names(combineddf))

## replace mag abbreviation with magnitude
names(combineddf) <- sub("mag","magnitude",names(combineddf))

## replace bodybody with body
names(combineddf) <- sub("bodybody","body",names(combineddf))

## replace mean() with mean to remove special characters 
names(combineddf) <- sub("mean\\(\\)","mean",names(combineddf))

## replace std() with sd to remove special characters 
names(combineddf) <- sub("std\\(\\)","sd",names(combineddf))



## ----------------------------------------------
## 5. create a second, independent tidy data set
## ----------------------------------------------

## sort the data 
combineddf <- arrange(combineddf,subject,activity)

library(reshape2)
## melt the columns into variable / value pairs

mymeltcols <- grep("subject|activity", names(combineddf),value = TRUE)
variablecols <- grep("mean|sd", names(combineddf),value = TRUE)

melteddata <- melt(combineddf, id = mymeltcols, measure.vars =  variablecols)

tidydata <- dcast(melteddata,"subject + activity ~ variable",mean)

write.table(tidydata, file = ".\\tidydata.txt",row.name=FALSE)

print("*** run_analysis completed - see tidydata.txt ***")



