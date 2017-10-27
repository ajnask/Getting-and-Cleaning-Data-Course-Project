
# Overview :
#   Data is collected from accelerometers connected with Samsung Galaxy S smartphone
#   The goal is to prepare tidy data that can be used for later analysis. 
#   The final tidy data is saved to file named "tidy_data.txt"

library(dplyr)

####################################################################################################
# STEP ZERO - Download and Read Data
####################################################################################################

# download zip file containing data if it hasn't already been downloaded
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
file <- "UCI HAR Dataset.zip"

if (!file.exists(file)) {
    download.file(url, file, mode = "wb")
}


# unzip zip file containing data if data directory doesn't already exist
dataPath <- "UCI HAR Dataset"
if (!file.exists(dataPath)) {
    unzip(zipFile)
}


# read training data
subject_train <- read.table(file.path(dataPath, "train", "subject_train.txt"))
X_train <- read.table(file.path(dataPath, "train", "X_train.txt"))
y_train <- read.table(file.path(dataPath, "train", "y_train.txt"))


# read test data
subject_test <- read.table(file.path(dataPath, "test", "subject_test.txt"))
X_test <- read.table(file.path(dataPath, "test", "X_test.txt"))
y_test <- read.table(file.path(dataPath, "test", "y_test.txt"))



# read features without converting the columns to factors
features <- read.table(file.path(dataPath,"features.txt"),as.is = TRUE)


# read activity labels
activities <- read.table(file.path(dataPath,"activity_labels.txt"))

####################################################################################################
# STEP ONE - Merge the training and test sets to create a single data set
####################################################################################################

# concatenating individual data tables to make a single table
activityTracking <- rbind(cbind(subject_train,X_train,y_train),
                          cbind(subject_test,X_test,y_test))


# removing individual tables to avoid confusion and save memory
rm(subject_test,X_test,y_test,subject_train,X_train,y_train)


# assinging column names
colnames(activityTracking) <- c("Subject_ID",features[,2],"Activity")


####################################################################################################
# STEP TWO - Extract only the measurements on the mean and standard deviation for each measurement
####################################################################################################

# columns of data to keep based of the column name
colsToKeep <- grep(x = colnames(activityTracking),pattern = "mean|std|Subject|Activity")


# updated data
activityTracking <- activityTracking[,colsToKeep]


####################################################################################################
# STEP THREE - Uses descriptive activity names to name the activities in the data set
####################################################################################################

# replace activity values with descriptive names
activityTracking$Activity <- factor(activityTracking$Activity,
                                    levels = activities[,1],
                                    labels = activities[,2])


####################################################################################################
# STEP FOUR - Appropriately label the data set with descriptive variable names
####################################################################################################

# get the column names of the data set
columnnames <- names(activityTracking)

# remove special characters
columnnames <- gsub(pattern = "[\\(\\)-]",replacement = "",x = columnnames)

# expand abbreviations
columnnames <- gsub("^t","timeDomain",columnnames)
columnnames <- gsub("^f","frequencyDomain",columnnames)
columnnames <- gsub("Acc","Accelerometer",columnnames)
columnnames <- gsub("Gyro","Gyroscope",columnnames)
columnnames <- gsub("Mag","Magnitude",columnnames)
columnnames <- gsub("std","StandardDeviation",columnnames)
columnnames <- gsub("Freq","Frequency",columnnames)
columnnames <- gsub("mean","Mean",columnnames)
columnnames <- gsub("BodyBody","Body",columnnames)


# updating the column names
names(activityTracking) <- columnnames


####################################################################################################
# STEP FIVE - create an independent tidy data set with the average of each variable for each 
# activity and each subject.
####################################################################################################

# group the entire data by subject and activity and then summarise the data with mean functino
activityTrackingMeans <- summarise_all(
    .tbl =  group_by(activityTracking,Subject_ID,Activity),
    .fun = mean
)


# output file 
write.table(x = activityTrackingMeans,file = "tidy_data.txt",row.names = FALSE,quote = FALSE)

