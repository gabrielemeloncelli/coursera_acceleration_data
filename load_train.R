## Load the train data and store in a data frame

## Load the column names
headers <- read.delim("./data/UCI HAR Dataset/features.txt", sep = " ", header = FALSE, stringsAsFactors = FALSE)
## Keep only the column with the header names
headers <- trimws(headers[,2])
## Make the column names tidy
tidy_headers <- gsub("[^A-Za-z0-9]", "", headers)

## Load the data
trainFrame <- read.fwf("./data/UCI HAR Dataset/train/X_train.txt", widths = rep(16, 561), stringsAsFactors = FALSE)


## Load the subjects
subjects <- read.csv("./data/UCI HAR Dataset/train/subject_train.txt", header = FALSE, stringsAsFactors = FALSE)
## Keep only the vector
subjects <- subjects[[1]]

## Add the column to the data frame
trainFrame <- mutate(trainFrame, subject = subjects)

## Set the column names
names(trainFrame) <- c(tidy_headers, "subject")
