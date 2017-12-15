## Code Book

This code book described the data used in this project, and the processing steps required to create the resulting tidy data set.

### Summary

30 volunteers performed 6 different activities in rain and test. The data captured their various movements measurements called features using a smart phone.

### Input Data files

* `X_train.txt`: 7352 observations of the 561 features for 21 of the 30 volunteers.
* `subject_train.txt`: a vector of 7352 integers, which denotes the IDs of the volunteers for each of the observations in `X_train.txt`.
* `y_train.txt`: a vector of 7352 integers, which denotes the IDs of the activities for each of the observations in `X_train.txt`.

* `X_test.txt`: 2947 observations of the 561 features for 9 of the 30 volunteers.
* `subject_test.txt`: a vector of 2947 integers, which denotes the IDs of the volunteers for each of the observations in `X_test.txt`.
* `y_test.txt`: a vector of 2947 integers, which denotes the IDs of the activity names for each of the observations in `X_test.txt`.


* `features.txt`: Names of the 561 features which are the movement measurements.
* `activity_labels.txt`: IDs and Names for each of the 6 activities.

#### Misc
* `features_info.txt`: more information about the features.

### Output Data file
The script creates a CSV file containging the resulting tidy data set, called [tydy_data.csv](tidy_data.csv) 

### Processing steps

1. All of the above data files from tain and test directories were read into data frames, then appropriate column names were added, and then the train  and test data sets were combined into a single data set.
2. All feature columns (from `X_train.txt`and `X_test.txt`) that did not contain the exact string "mean()" or "std()" were removed . This left 66 selected feature columns(containing exact string "mean()" or "std()), and plus SubjectID and Activity columns additionally in the data set for further processing.
3. The Activity column was converted from a integer to a character name, using factor with labels describing activity names extracted from `activity_labels.txt`.
4. A tidy data set was created containing the mean of each feature for each subject (`SubjectID`) and each activity (`Activity`) using melt and cast functions. Each row presents each subject's an activity with the means of the 66 selected features and each subject has 6 rows/activities in the tidy data set. There are 30 subjects from train and test data files(`Y_train.txt` and Y_test.txt``). 
5. The tidy data set was output to a CSV file.


More information about the files is available in `README.txt`.  
