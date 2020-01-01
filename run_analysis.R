library(data.table)
if(!file.exists("./data")){dir.create("./data")}
fileurl <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
download.file(fileurl,destfile ="./data/Gsmartphone.zip", method='curl' )
unzip("./data/Gsmartphone.zip",exdir="./data") 

##    The dataset includes the following files:
##    =========================================
##    - 'README.txt'
##    - 'features_info.txt': Shows information about the variables used on the feature vector
##    - 'activity_labels.txt': Links the class labels with their activity name.
##    - 'features.txt': List of all features.
##    - 'train/X_train.txt': Training set.
##    - 'train/y_train.txt': Training labels.
##    - 'train/subject_train.txt
##    - 'test/X_test.txt': Test set.
##    - 'test/y_test.txt': Test labels.

            features <- read.table("./data/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
            colnames(features) <- c("featureId", "featureName")
            features$featureName = gsub('mean', 'Mean', features$featureName)
            features$featureName = gsub('std', 'Sd', features$featureName)
            features$featureName = gsub('[()]', '', features$featureName)
            #features$featureName <- substring(features$featureName,2,nchar(features$featureName))
            featuresRequested <- grep(".*Mean.*|.*Sd.*", features$featureName)
            featuresRequestedNames <- features[featuresRequested,"featureName"]
            activityLabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
            colnames(activityLabels) <- c("activityID", "activityName")
            
# Load the datasets
          train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
          train <- train[,featuresRequested]
          trainActivities <- read.table("./data/UCI HAR Dataset/train/Y_train.txt")
          trainSubjects <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
          train <- cbind(trainSubjects, trainActivities, train)
          test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
          test <- test[,featuresRequested]
          testActivities <- read.table("./data/UCI HAR Dataset/test/Y_test.txt")
          testSubjects <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
          test <- cbind(testSubjects, testActivities, test)
          fullData <- rbind(train, test)
          colnames(fullData) <- c("subjectID", "activityID", featuresRequestedNames)
          fullData$activity <- factor(fullData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
         ## fullData$Name <- as.character(fullData$activity)
          
          fullDataTidy <-melt.data.table(data.table(fullData),c(1,89),featuresRequestedNames)
          colnames(fullDataTidy) <- c("subjectID", "activityName", "featureNames","measurement")
          allDataTidyGrouped <- group_by(fullDataTidy,activityName,featureNames,subjectID)
          dfTidyMean <- summarise_all(allDataTidyGrouped,"mean")
          colnames(dfTidyMean) <- c( "activityName", "featureNames", "subjectID" ,"mean")
