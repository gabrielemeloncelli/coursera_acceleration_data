## Keep only the mean and standard deviation fields
## Use the raw field names to get the allowed functions name
meanstdfields <- grepl("mean[(][])]", headers) | grepl("std[(][)]", headers)
## Append the subject and the activity fields
meanstdfields <- c(meanstdfields, TRUE, TRUE)
## Get only the selected columns in the data frame
merged <- merged[, meanstdfields]

## Complete the linting of the column names
newNames <- gsub("^t","time", names(merged))
newNames <- gsub("^f","frequency", newNames)
newNames <- gsub("BodyBody","body", newNames)
newNames <- gsub("Body","body", newNames)
newNames <- gsub("Acc","accelerometer", newNames)
newNames <- gsub("Gyro","gyroscope", newNames)
newNames <- gsub("Mag","magnitude", newNames)
newNames <- gsub("std","standarddeviation", newNames)
newNames <- gsub("Jerk","jerk", newNames)
newNames <- gsub("Y$","y", newNames)
newNames <- gsub("Z$","z", newNames)
names(merged) <- newNames



