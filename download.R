## Download the compressed file and unzip

if(!file.exists("data")) {
     dir.create("data")
}
download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip',
   'data/CompressedDataset.zip')

unzip('data/CompressedDataset.zip', exdir='data', overwrite='true')