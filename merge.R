## Merge the datasets
merged <- rbind(testFrame, trainFrame)

## Set the subject as factor
merged$subject <- as.factor(merged$subject)

## Remove the imported objects
rm("trainFrame")
rm("testFrame")

