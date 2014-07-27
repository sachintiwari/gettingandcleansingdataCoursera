
# Download file to local directory and unzip files

setwd("C:/Sachin Docs/Coursera/Data Science Track/working_directory/getting and cleaning data")
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
download.file(fileUrl, destfile = "projectfile_gcd.zip",mode="wb")
unzip("projectfile_gcd.zip")

# Store path to Test files
x.test.file <- "./UCI HAR Dataset/test/X_test.txt"
y.test.file <- "./UCI HAR Dataset/test/y_test.txt"
subj.test.file <- "./UCI HAR Dataset/test/subject_test.txt"

# Store path to Train files
x.train.file <- "./UCI HAR Dataset/train/X_train.txt"
y.train.file <- "./UCI HAR Dataset/train/y_train.txt"
subj.train.file <- "./UCI HAR Dataset/train/subject_train.txt"

# Retrieve features

features.file <- "./UCI HAR Dataset/features.txt"
features<-read.table(features.file)[[2]]

# Get the activity
activity.file <- "./UCI HAR Dataset/activity_labels.txt"
activity <- read.table(activity.file)
names(activity) <- c("label", "activity")
activity

# Read test data
dataset <- read.table(x.test.file)
names(dataset) <- features
dataset["label"] <- read.table(y.test.file)
dataset["subject"] <- read.table(subj.test.file)
dataset <- merge(dataset, activity)
dstest <- dataset[grep("mean\\(\\)|std\\(\\)|activity|subject", names(dataset))]
names(dstest) <- gsub("[^[:alnum:]]", "", tolower(names(dstest)))

# Read train data
dataset <- read.table(x.train.file)
names(dataset) <- features
dataset["label"] <- read.table(y.train.file)
dataset["subject"] <- read.table(subj.train.file)
dataset <- merge(dataset, activity)
dstrain <- dataset[grep("mean\\(\\)|std\\(\\)|activity|subject", names(dataset))]
names(dstrain) <- gsub("[^[:alnum:]]", "", tolower(names(dstrain)))

dim(dstest)
dim(dstrain)

# Merge both datasets
z<-rbind(dstest, dstrain)

# Write the combined file

write.csv(z, file='combineddata.csv', row.names=FALSE)

names(z)

library(reshape2)
combineddataMelt <- melt(z, id.vars=c("subject", "activity"))
tidyAverage <- dcast(combineddataMelt, subject + activity ~ variable, mean)

# head(tidyAverage)
# tail(tidyAverage)

write.csv(tidyAverage, file='tidyAverage.csv', row.names=FALSE)
