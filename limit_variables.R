## Keep only the mean and standard deviation fields
## Use the raw field names to get the allowed functions name
meanstdfields <- grepl("mean[(][])]", headers) | grepl("std[(][)]", headers)
## Append the subject field
meanstdfields <- c(meanstdfields, TRUE)
## Get only the selected columns in the data frame
merged <- merged[, meanstdfields]
