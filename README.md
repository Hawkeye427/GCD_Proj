---
title: "Getting and Cleaning Data Peer Assessment"
author: "Hawkeye427"
date: "Friday, May 22, 2015"
output: html_document
keep_md: yes
---

# I. Background
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

* Data set: [Samsung data](https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2) [47Mb]  
* Source: [Data Website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) 

**Referenced publication [1] and License** 
```
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
```

# II. Using the Script

#### 1. Load packages

For this analysis the following packages will be needed:  

* `reshape2` :- Check to see if it is installed. Load after intalling 
* `data.table`  
* `plyr`


#### 2. Download Data and Reset the Working Directory


The first steps in the analysis achieves the following goals:  

* Download data and extract zipped file into desired working location  
* Remove extraneous downloaded materials like the original zip file  
* Reset the working directory to the extracted folder `./UCI HAR dataset`  


#### 3. Clean Data  

*load labels and create column filters*  
Retrieve activity labels and create column filters using `grep` to obtain only the measurements on the mean and standard deviation for each measurement.

*load test and train data sets*  
Load both train and test data sets while at the same time doing the following:  

* renaming columns
* limiting columns to the filtered list of columns
* creating and identifier for the type of data 'train or test'

*merge test and train into single data frame*  
Combine merged data into a single data frame.

*summarize merged data*  
Grouping by activity and subject, calculate the average of all the filtered fields.  


# III. Final File

 Use `write.table() and row.name=FALSE` to create a new text file with the tidy table to be submitted.
