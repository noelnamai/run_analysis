## Function to prepare a tidy data set that can be used for later analysis. 
run_analysis <- function() {
    
    features <- read.table("features.txt", sep="")
    activityLabels <- read.table("activity_labels.txt", sep="")
    subjectTest <- read.table("./test/subject_test.txt", sep="")
    subjectTrain <- read.table("./train/subject_train.txt", sep="")
    
    ## Function that appropriately labels the data set with descriptive activity names. 
    DoStuff <- function(dataSet, activityLabels) {
        for(i in dataSet[,1]){
            for(j in 1:length(dataSet[,1])){
                if(dataSet[j,] == i){
                    dataSet[j,] <- toString(activityLabels[,2][i])
                }
            }
        }
        dataSet
    }
    
    ## Extract 'test' files and use descriptive activity names to name the activities.
    xTest <- read.table("./test/X_test.txt", sep="")
    yTest <- read.table("./test/y_test.txt", sep="")
    yTest <- DoStuff(yTest, activityLabels)
    
    ## Extract 'train' files use descriptive activity names to name the activities.
    xTrain <- read.table("./train/X_train.txt", sep="")
    yTrain <- read.table("./train/y_train.txt", sep="")
    yTrain <- DoStuff(yTrain, activityLabels)
    
    ##  Merge the training and the test sets to create one data set.
    mergedData <- rbind(xTest, xTrain)
    
    names(mergedData) <- features[, 2]
    
    ## Extract only the measurements on the mean and standard deviation for each measurement. 
    s <- names(mergedData)         
    mergedData <- mergedData[s[grepl("mean[()]|std[()]", s)]]
    
    ## Create 'subjects' and 'activityLabels' columns.
    mergedData["subjects"] <- rbind(subjectTest, subjectTrain)    
    mergedData["activityLabels"] <- rbind(yTest, yTrain)
    
    ## Create an independent tidy data set with the average of each variable for each activity and each subject. 
    tidyDataSet <- aggregate(.~subjects+activityLabels, mergedData, mean)
    write.table(tidyDataSet, file="tidyDataSet.txt", sep=",", col.names=colnames(tidyDataSet))
}