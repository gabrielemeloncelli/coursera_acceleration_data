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

## Load the activities
activitydescriptions <- read.fwf("./data/UCI HAR Dataset/activity_labels.txt", widths = c(1, 1, 100), stringsAsFactors = FALSE) %>% select(c(activitycode = as.numeric(V1), activitydescription = V3))
activitieslist <- read.fwf("./data/UCI HAR Dataset/train/y_train.txt", widths = c(100), stringsAsFactors = FALSE) %>% select(c(activitycode = as.numeric(V1)))


## Add the subject and activities columns to the data frame
trainFrame <- mutate(trainFrame, subject = subjects, 
	activity = as.factor(inner_join(activitieslist, activitydescriptions)[["activitydescription"]]))


## Set the column names
names(trainFrame) <- c(tidy_headers, "subject", "activity")
