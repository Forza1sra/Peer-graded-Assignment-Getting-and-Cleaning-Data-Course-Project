# Peer-graded Assignment: Getting and Cleaning Data Course Project

## The raw data
This project relies on the UCI HAR Dataset whose data is cleaned by the script run_analysis.R. It is assumed that the data set will be in the working
directory.
This dataset can be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Run_analysis.R

This script is designed to clean the dataset mentioned above and prepare it for further analysis.

1. It starts by downloading and unzipping the file if it hasn't been done already.

2. All 7 data sets are imported. Column names are assigned to some of them from the start.

3. The numeric values represented by the "activity" column in the trainY and testY datasets are converted to a more descriptive string.

4. All data sets are merged into one data set called train_test.

5. Columns are subsetted to contain only those involving the mean or standard deviation in addition to the activity column and subject column representing
the participant.

6. All measurement columns are collapsed into rows with the melt() function.

7. Some modifications are made to the values of the measurement column. The data is now clean but in long rather than wide form. This form also makes it easier to summarize the values for the next step.

8. The average of the measurements are taken and the dataset is spread out into wide form.

9. The now summarized data is recorded to a text file called "tidyTable.txt"

## tidyTable.txt
The output file returned by the script "Run_analysis.R"

## CodeBook.md
Contains variable descriptions for the raw data as well as what changed when becoming processed data.