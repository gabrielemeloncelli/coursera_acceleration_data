## List of the required code files

1. **download.R** Downloads the data file(s)
2. **load_test.R** Loads the test data set from the files
3. **load_train.R** Loads the train data set from the files
4. **limit_variables** Limits the variables to those required by the study.
5. **merge.R** Merges the test and train data sets
6. **split_data.R** Splits the data frame to obtain a set of vertical data sets
7. **merge_verticalized.R** Merges the splitted data frame to have a complete vertical set
8. **summarize.R** Summarizes the data by subject (and by the verticalized factors movement and axis
9. **cleanup.R** Removes the intermediate objects
10. **execute.R** Sources and executes all the files above

## Software versions
R: 3.5.1
dplyr: 0.7.6

## How to execute
In order to run the script successfully the data files need to be placed in a folder named data.
After that open and execute 'execute.R' (or either issue source('execute.R') command)


### License:

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.