## Function.

### run_analysis.R

  * A function to collect, work with, and clean a data set. 
  * The output is a tidy data set that can be used for later analysis.

  ### Input

  #### none

  ### Output

  #### tidyDataSet

  * Tidy data set with the average of each variable for each activity and each subject. 

### Variables
=============

#### features

 * List of all features.

#### activityLabels

 * Links the class labels with their activity name.

#### subjectTest

 * Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

#### subjectTrain

* Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

#### DoStuff(dataSet, activityLabels)

* Function that appropriately labels the data set with descriptive activity names.
  
  * nm
