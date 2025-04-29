# CodeBook for “final\_tidy\_data.txt”

This tidy data set contains the **average of each mean and standard
deviation** measurements for a set of variables described below by
**subject** and **activity**. It has a total of 180 observations and 68
columns.

The original data comes from the **Human Activity Recognition Using
Smartphones** Dataset, version 1.0. In this experiments were carried out
with a group of 30 volunteers within an age bracket of 19-48 years old.
Each person performed six activities (WALKING, WALKING\_UPSTAIRS,
WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone
(Samsung Galaxy S II) on the waist.

## Variables

### Subjects

Variable that identifies each volunteer to the experiments (1-30).

### Activity\_labels

Descriptive activity label.

WALKING

WALKING\_UPSTAIRS

WALKING\_DOWNSTAIRS

SITTING

STANDING

LAYING

### Features

The features selected for this tidy dataset include a subset of measures
from the original data focusing on **average** - mean() - and **standard
deviation** - std(). Each measure includes 3-axial signals in the X, Y
and Z directions.

“tBodyAcc-mean()-X” “tBodyAcc-mean()-Y” “tBodyAcc-mean()-Z”
“tBodyAcc-std()-X”  
“tBodyAcc-std()-Y” “tBodyAcc-std()-Z” “tGravityAcc-mean()-X”
“tGravityAcc-mean()-Y” “tGravityAcc-mean()-Z”  
“tGravityAcc-std()-X” “tGravityAcc-std()-Y” “tGravityAcc-std()-Z”
“tBodyAccJerk-mean()-X” “tBodyAccJerk-mean()-Y”  
“tBodyAccJerk-mean()-Z” “tBodyAccJerk-std()-X” “tBodyAccJerk-std()-Y”
“tBodyAccJerk-std()-Z” “tBodyGyro-mean()-X”  
“tBodyGyro-mean()-Y” “tBodyGyro-mean()-Z” “tBodyGyro-std()-X”
“tBodyGyro-std()-Y” “tBodyGyro-std()-Z”  
“tBodyGyroJerk-mean()-X” “tBodyGyroJerk-mean()-Y”
“tBodyGyroJerk-mean()-Z” “tBodyGyroJerk-std()-X”
“tBodyGyroJerk-std()-Y”  
“tBodyGyroJerk-std()-Z” “tBodyAccMag-mean()” “tBodyAccMag-std()”
“tGravityAccMag-mean()” “tGravityAccMag-std()”  
“tBodyAccJerkMag-mean()” “tBodyAccJerkMag-std()” “tBodyGyroMag-mean()”
“tBodyGyroMag-std()” “tBodyGyroJerkMag-mean()”  
“tBodyGyroJerkMag-std()” “fBodyAcc-mean()-X” “fBodyAcc-mean()-Y”
“fBodyAcc-mean()-Z” “fBodyAcc-std()-X”  
“fBodyAcc-std()-Y” “fBodyAcc-std()-Z” “fBodyAccJerk-mean()-X”
“fBodyAccJerk-mean()-Y” “fBodyAccJerk-mean()-Z”  
“fBodyAccJerk-std()-X” “fBodyAccJerk-std()-Y” “fBodyAccJerk-std()-Z”
“fBodyGyro-mean()-X” “fBodyGyro-mean()-Y”  
“fBodyGyro-mean()-Z” “fBodyGyro-std()-X” “fBodyGyro-std()-Y”
“fBodyGyro-std()-Z” “fBodyAccMag-mean()”  
“fBodyAccMag-std()” “fBodyBodyAccJerkMag-mean()”
“fBodyBodyAccJerkMag-std()” “fBodyBodyGyroMag-mean()”
“fBodyBodyGyroMag-std()”  
“fBodyBodyGyroJerkMag-mean()” “fBodyBodyGyroJerkMag-std()

### Transformations

1.  **Renaming variables**

-   Renamed all columns with descriptive names including the features
    according to the “features.txt” file.

1.  **Merging train and test datasets**

-   Combined the individual files for subject, activity and measurement
    for train and test and then joined the train and test sets into a
    single dataset.

1.  **Filtering relevant columns**

-   Filtered features columns to include only those with measurements of
    mean() or std().

1.  **Mapping activities codes to labels**

-   Used the “activity\_labels.txt” to map each activity numeric code to
    their respective descriptive label into an “Activity\_labels” column
    and then simplified the table by removing the “Activity” column.

1.  **Calculating averages**

-   Grouped data by subject and activity, then calculated the average of
    each variable for the final tidy dataset using a group\_by() and
    summarise().
