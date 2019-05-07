library(readr)
library(dplyr)
library(tidyr)
library(stringr)

# Check for the data set from the zip file.
if(!dir.exists("UCI HAR Dataset"))
{
  # Check for  the zip file. If it doesn't exist, download it. Otherwise, unzip it.
  if(!file.exists("getdata_projectfiles_UCI HAR Dataset.zip"))
  {
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "data/getdata_projectfiles_UCI HAR Dataset.zip")
  } else
  {
    unzip("data/getdata_projectfiles_UCI HAR Dataset.zip")
  }
}

#Import and fix feature data
features <- read_table("UCI HAR Dataset/features.txt", col_names = "features")
features <- separate(features, features, c("colNum", "features"), sep = " ")

#Import train data
trainX <- read_table("UCI HAR Dataset/train/X_train.txt", col_names = features$features)
trainY <- read_table("UCI HAR Dataset/train/Y_train.txt", col_names = c("activity"))
subject_train <- read_table("UCI HAR Dataset/train/subject_train.txt", col_names = "subject")

#import test data
testX <- read_table("UCI HAR Dataset/test/X_test.txt", col_names = features$features)
testY <- read_table("UCI HAR Dataset/test/y_test.txt", col_names = "activity")
subject_test <- read_table("UCI HAR Dataset/test/subject_test.txt", col_names = "subject")

#import activities
activityLabels <- read_table("UCI HAR Dataset/activity_labels.txt", col_names = c("code", "activity"))

#replaces numbers with the name of the activity
for (i in 1:length(activityLabels$code))
{
  trainY[trainY$activity %in% activityLabels$code[i],] <- activityLabels$activity[i]
  testY[testY$activity %in% activityLabels$code[i],] <- activityLabels$activity[i]
}

#merge data
train <- cbind(subject_train, trainY, trainX)
test <- cbind(subject_test, testY, testX)
train_test <- rbind(train, test)

#collect wanted columns
train_test <- train_test[,grep("subject|activity|-mean|-std", names(train_test))]

#Collapse columns
tidy_train_test <- melt(train_test, c("subject", "activity"), variable.name = "measurement")

#change names on measurement column
tidy_train_test$measurement <- gsub("\\(\\)", "", tidy_train_test$measurement)
tidy_train_test$measurement <- gsub("^t", "time", tidy_train_test$measurement)
tidy_train_test$measurement <- gsub("^f", "frequency", tidy_train_test$measurement)
tidy_train_test$measurement <- gsub("BodyBody", "Body", tidy_train_test$measurement)

#Summarized tidy data set
tidy_train_test2 <- tidy_train_test %>% group_by(subject, activity, measurement) %>% summarise(mean = mean(value, na.rm = TRUE)) %>% spread(measurement,
                                                                                                                                            mean)

#write the data to a text file
write.table(tidy_train_test2, "tidyTable.txt", row.names = FALSE)
