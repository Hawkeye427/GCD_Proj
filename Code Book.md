---
title: "Code Book"
author: "Hawkeye427"
date: "Saturday, May 23, 2015"
keep_md: yes
output: html_document
---


Human Activity Recognition Using Smartphones Dataset - Modified for Project
===========================================================================

## SUMMARY OF REVISIONS

The experiments was originally carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities namely:  
* WALKING  
* WALKING_UPSTAIRS  
* WALKING_DOWNSTAIRS  
* SITTING  
* STANDING  
* LAYING  
They did this while wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The following changes were made to the data:  
* Only measurements related to the mean and standard deviation has been retained. This reduced the columns from 561 fields to only 79 fields.  
* The field names were renamed using activity labels and feature names for both train and test data sets.  
* The data set is summarized by finding the mean for all retained features grouped by subject identifier and the activity type.  


For each record it is provided:
===============================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 79-feature vector with mean time and mean frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following Variables:
==============================================

 Field Name                     | Field Type
 -------------------------------|--------------------
 subject                        | integer  1 -30
 activity_label                 | Factor w/ 6 levels 
 activity                       | Number
 tBodyAcc.mean...X              | Number
 tBodyAcc.mean...Y              | Number
 tBodyAcc.mean...Z              | Number
 tBodyAcc.std...X               | Number 
 tBodyAcc.std...Y               | Number 
 tBodyAcc.std...Z               | Number 
 tGravityAcc.mean...X           | Number 
 tGravityAcc.mean...Y           | Number 
 tGravityAcc.mean...Z           | Number 
 tGravityAcc.std...X            | Number 
 tGravityAcc.std...Y            | Number 
 tGravityAcc.std...Z            | Number 
 tBodyAccJerk.mean...X          | Number 
 tBodyAccJerk.mean...Y          | Number 
 tBodyAccJerk.mean...Z          | Number 
 tBodyAccJerk.std...X           | Number 
 tBodyAccJerk.std...Y           | Number 
 tBodyAccJerk.std...Z           | Number 
 tBodyGyro.mean...X             | Number 
 tBodyGyro.mean...Y             | Number 
 tBodyGyro.mean...Z             | Number 
 tBodyGyro.std...X              | Number 
 tBodyGyro.std...Y              | Number 
 tBodyGyro.std...Z              | Number 
 tBodyGyroJerk.mean...X         | Number 
 tBodyGyroJerk.mean...Y         | Number 
 tBodyGyroJerk.mean...Z         | Number 
 tBodyGyroJerk.std...X          | Number 
 tBodyGyroJerk.std...Y          | Number 
 tBodyGyroJerk.std...Z          | Number 
 tBodyAccMag.mean..             | Number 
 tBodyAccMag.std..              | Number 
 tGravityAccMag.mean..          | Number 
 tGravityAccMag.std..           | Number 
 tBodyAccJerkMag.mean..         | Number 
 tBodyAccJerkMag.std..          | Number 
 tBodyGyroMag.mean..            | Number 
 tBodyGyroMag.std..             | Number 
 tBodyGyroJerkMag.mean..        | Number 
 tBodyGyroJerkMag.std..         | Number 
 fBodyAcc.mean...X              | Number 
 fBodyAcc.mean...Y              | Number 
 fBodyAcc.mean...Z              | Number
 fBodyAcc.std...X               | Number
 fBodyAcc.std...Y               | Number
 fBodyAcc.std...Z               | Number
 fBodyAcc.meanFreq...X          | Number
 fBodyAcc.meanFreq...Y          | Number
 fBodyAcc.meanFreq...Z          | Number
 fBodyAccJerk.mean...X          | Number
 fBodyAccJerk.mean...Y          | Number
 fBodyAccJerk.mean...Z          | Number
 fBodyAccJerk.std...X           | Number
 fBodyAccJerk.std...Y           | Number
 fBodyAccJerk.std...Z           | Number
 fBodyAccJerk.meanFreq...X      | Number
 fBodyAccJerk.meanFreq...Y      | Number
 fBodyAccJerk.meanFreq...Z      | Number
 fBodyGyro.mean...X             | Number
 fBodyGyro.mean...Y             | Number
 fBodyGyro.mean...Z             | Number
 fBodyGyro.std...X              | Number
 fBodyGyro.std...Y              | Number
 fBodyGyro.std...Z              | Number
 fBodyGyro.meanFreq...X         | Number
 fBodyGyro.meanFreq...Y         | Number
 fBodyGyro.meanFreq...Z         | Number
 fBodyAccMag.mean..             | Number
 fBodyAccMag.std..              | Number
 fBodyAccMag.meanFreq..         | Number
 fBodyBodyAccJerkMag.mean..     | Number
 fBodyBodyAccJerkMag.std..      | Number
 fBodyBodyAccJerkMag.meanFreq.. | Number
 fBodyBodyGyroMag.mean..        | Number
 fBodyBodyGyroMag.std..         | Number
 fBodyBodyGyroMag.meanFreq..    | Number
 fBodyBodyGyroJerkMag.mean..    | Number
 fBodyBodyGyroJerkMag.std..     | Number
 fBodyBodyGyroJerkMag.meanFreq..| Number


Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

