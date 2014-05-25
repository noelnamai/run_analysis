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

 * Dataframe that links the class labels with their activity name.

#### subjectTest

 * Dataframe where each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

#### subjectTrain

* Dataframe where each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

#### DoStuff(dataSet, activityLabels)

* Function that appropriately labels the data set with descriptive activity names.
  
  ##### Input

   * dataSet: yTest or yTrain dataframe.

   * activityLabels: a dataframe that links the class labels with their activity name.

  ##### Output
  
   * dataSet: appropriately labels the data set with descriptive activity names.

#### xTest

* Test set. A 561-feature dataframe with time and frequency domain variables. 

#### yTest

* Test labels.

#### xTrain

* Training set. A 561-feature dataframe with time and frequency domain variables. 

#### yTrain

* Train labels.

#### mergedData

* Merged the training and the test sets to create one data set.
* Extract only the measurements on the mean and standard deviation for each measurement.
* Create 'subjects' and 'activityLabels' columns.

#### tidyDataSet

* An independent tidy data set with the average of each variable for each activity and each subject. 
