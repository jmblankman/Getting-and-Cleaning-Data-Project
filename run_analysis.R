## Merge training and test sets
x <- rbind(x_train, x_test)
y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)
combinedData <- cbind(x, y, subject)

## Extract only the measurements on the mean and standard deviation for each measurement
library(dplyr)
cleanData <- select(combinedData, subject, code, contains("Mean"), contains("mean"), contains("std"))

## Use descriptive activity names to name the activities in the data set
cleanData$code <- activity_labels[cleanData$code, 2]

## Appropriately label the data set with descriptive variable names
names(cleanData)[1] <- "Subject"
names(cleanData)[2] <- "Activity"
names(cleanData) <- gsub("Acc", "Accelerometer", names(cleanData))
names(cleanData) <- gsub("Gyro", "Gyroscope", names(cleanData))
names(cleanData) <- gsub("BodyBody", "Body", names(cleanData))
names(cleanData) <- gsub("Mag", "Magnitude", names(cleanData))
names(cleanData) <- gsub("^t", "Time", names(cleanData))
names(cleanData) <- gsub("^f", "Frequency", names(cleanData))
names(cleanData) <- gsub("tBody", "TimeBody", names(cleanData))
names(cleanData) <- gsub("-mean()", "Mean", names(cleanData), ignore.case = TRUE)
names(cleanData) <- gsub("-std()", "STD", names(cleanData), ignore.case = TRUE)
names(cleanData) <- gsub("-freq()", "Frequency", names(cleanData), ignore.case = TRUE)
names(cleanData) <- gsub("angle", "Angle", names(cleanData))
names(cleanData) <- gsub("gravity", "Gravity", names(cleanData))

## Create a second, independent tidy data set with the average of each variable 
## for each activity and each subject
groupData <- group_by(cleanData, Activity, Subject)
finalData <- summarise_all(groupData, funs(mean))
