## Code Book

This code book described the data used in this project, and the processing steps required to create the resulting tidy data set.

### Overview

30 volunteers performed 6 different activities in rain and test while wearing a smartphone. The data captured their various movements measurements called features.

### Explanation of each data file used in this project

* `X_train.txt`: 7352 observations of the 561 features for 21 of the 30 volunteers.
* `subject_train.txt`: A vector of 7352 integers, which denotes the ID of the volunteer for each of the observations in `X_train.txt`.
* `y_train.txt`: A vector of 7352 integers, which denotes the ID of the activity for each of the observations in `X_train.txt`.

* `X_test.txt`: 2947 observations of the 561 features for 9 of the 30 volunteers.
* `subject_test.txt`: A vector of 2947 integers, which denots the ID of the volunteer for each of the observations in `X_test.txt`.
* `y_test.txt`: A vector of 2947 integers, which denotes the ID of the activity for each of the observations in `X_test.txt`.


* `features.txt`: Names of the 561 features which are the movement measurements.
* `activity_labels.txt`: IDs and Names for each of the 6 activities.

*Misc:*
`features_info.txt`: More information about the features.


More information about the files is available in `README.txt`.  

### Data files that were not used

This project was performed using only above files, and the data files in "Inertial Signals" folders were irrelevent for this project.

### Processing steps

1. All of the above data files for tain and test were read into data frames, appropriate column names were added, and the train  and test sets were combined into a single data set.
2. All feature columns were removed that did not contain the exact string "mean()" or "std()". This left 66 feature columns, including the columns containing exact string "mean()" or "std()", and SubjectID and Activity columns additionally.
3. The Activity column was converted from a integer to a factor, using labels describing activity names.
4. A tidy data set was created containing the mean of each feature for each subject and each activity. Thus, each subject (for exmample ID 1) has 6 rows in the tidy data set (one row for each activity), and each row contains the mean value for each of the 66 features. Since there are 30 subjects from train and test data files, there are a total of 180 rows.
5. The tidy data set was output to a CSV file.