## Load the test data and store in a data frame

## Load the dplyr library
library(dplyr)

## Load the column names
headers <- read.delim("./data/UCI HAR Dataset/features.txt", sep = " ", header = FALSE, stringsAsFactors = FALSE)
## Keep only the column with the header names
headers <- trimws(headers[,2])
## Make the column names tidy
tidy_headers <- gsub("[^A-Za-z0-9]", "", headers)

## Load the data
testFrame <- read.fwf("./data/UCI HAR Dataset/test/X_test.txt", widths = rep(16, 561), stringsAsFactors = FALSE)

## Load the subjects
subjects <- read.csv("./data/UCI HAR Dataset/test/subject_test.txt", header = FALSE, stringsAsFactors = FALSE)
## Keep only the vector
subjects <- subjects[[1]]

## Load the activities
activitydescriptions <- read.fwf("./data/UCI HAR Dataset/activity_labels.txt", widths = c(1, 1, 100), stringsAsFactors = FALSE) %>% select(c(activitycode = as.numeric(V1), activitydescription = V3))
activitieslist <- read.fwf("./data/UCI HAR Dataset/test/y_test.txt", widths = c(100), stringsAsFactors = FALSE) %>% select(c(activitycode = as.numeric(V1)))


## Add the subject and activities columns to the data frame
testFrame <- mutate(testFrame, subject = subjects, 
	activity = as.factor(inner_join(activitieslist, activitydescriptions)[["activitydescription"]]))


## Set the column names
names(testFrame) <- c(tidy_headers, "subject", "activity")
