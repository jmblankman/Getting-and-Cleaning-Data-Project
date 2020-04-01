This repository is my submission for John Hopkin's Getting and Cleaning Data Course Project. 

The dataset used was "Human Activity Recognition Using Smartphones" taken from UCI's Machine Learning Repository. This dataset includes 
recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with 
embedded inertial sensors. 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

There are 3 other files located in this repository:

1. CodeBook.md - A CodeBook describing the run_analysis.R script and its functions
2. run_analysis.R - An R script that completes the 5 requests of the Getting and Cleaning Data's Course Project:
   a. Merges the training and the test sets to create one data set
   b. Extracts only the measurements on the mean and standard deviation for each measurement
   c. Uses descriptive activity names to name the activities in the data set
   d. Appropriately labels the data set with descriptive variable names
   e. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and 
      each subject
3. finalData.txt - A text file including the final output of the Getting and Cleaning Data Course Project
