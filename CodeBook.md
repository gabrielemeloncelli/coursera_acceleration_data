## Data description
The output of the script consists in two data frames
* **linted** contains the merged data from the test and train data files
* **summarized** contains the data of the linted data frame summarized by subject and the verticalized factors movement and axis.

## Variables
1. **subject** Identifier of the subject of the experiment (person who weared the device)
2. **movementtype** Three types of activities were monitored: body movements('body'), jerk movements('jerk'), and gravity ('gravity')                     
3. **axis** The axis of the measurement: the three cartesian axes (x, y, and z) and the magnitude ('magnitude') were measured.
4. **lineramean** The mean value of the linear acceleration [pure number -1 .. 1]
5. **linearstandarddeviation** The standard deviation of the linear acceleration [pure number -1 .. 1]
6. **angularmean** The mean value of the angular acceleration [pure number -1 .. 1]               
7. **angularstandarddeviation** The standard deviation of the angular acceleration [pure number -1 .. 1]   
8. **frequencylinearmean** The mean frequency of the linear acceleration [pure number -1 .. 1]             
9. **frequencylinearstandarddeviation** The standard deviation of the linear acceleration [pure number -1 .. 1]
10. **frequencyangularmean** The mean frequency of the angular acceleration [pure number -1 .. 1]
11. **frequencyangularstandarddeviation** The standard deviation of the angular acceleration [pure number -1 .. 1]

## Data transformations
The test data were imported from the file test\X_test.txt.
The subjects of the measurements were imported from the file test\subject_test.txt.
The train data were imported from the file train\X_train.txt.
The subjects of the measurements were imported from the file train\subject_train.txt.

The two data frames were merged adding the observations.

The extra variables (columns) were removed from the data frame.

The data set was made vertical by crushing the columns according to the movement type ('body', 'jerk', and 'gravity')
and the axes ('x', 'y', 'z', and 'magnitude)

At the end of the execution you get two data frames:
- **linted**: it contains the detalied merged data
- **summarized**: it contains the summarized data as detailed above




