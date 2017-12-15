## Class Project for "Getting and Cleaning Data"

The class project for [Getting and Cleaning Data](https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project) was to prepare tidy data from data files collected from [Human Actitivities from Samsung Galaxy S smartphone](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and output a tidy data set.

**You should create one R script called run_analysis.R that does the following:**

* Merges train and test data sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set.
* Appropriately labels the data set with descriptive variable names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


**Here are instructions on how you can run the R script:**

1. Download the zip file from [this link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

2. Unzip the following data files to the directory "UCI HAR Dataset""  
* `features.txt`
* `subject_train.txt`
* `subject_test.txt`
* `X_train.txt`
* `X_test.txt`
* `y_train.txt`
* `y_test.txt`

3. Run the R script ([run_analysis.R](run_analysis.R))that reads the above data files from directory "UCI HAR Dataset" and processes them into a tidy data set.

* Note it requires the reshape package to call function melt and cast to generate the desired tidy data set.

**The output of the R script is a tidy data set, called [tidy_data.csv](tidy_data.csv).**

**The project code book is [CodeBook.md](CodeBook.md).**