## Data description
The output of the script consists in two data frames
* **merged** contains the merged data from the test and train data files
* **summarized** contains the data of the linted data frame summarized by subject and the verticalized factors movement and axis.

## Variables

All the measurement variables (1 to 66) share the same naming conventions and the value unit:
* **time** the measurement is time averaged value or standard deviation in the sample period
* **frequency** the measurement is the frequency trasformation of the sampling period
* **body** the measurement reflects a body movement
* **jerk** the measurement reflects a body jerk movement
* **gravity** the measurement reflects the gravity acceleration
* **accelerometer** the measurement comes from the accelerometer in the device
* **gyroscope** the measurement comes from the gyroscope in the device
* **mean** the measurement is the mean in the sample period
* **standarddeviation** the measurement is the standard deviation in the sample period
* **magnitude** the measurement is the magnitude as derived from the axes components
* **x y z** the measurement is the single axis (x, y or z) of the quantity
**unit of measurement** all the measurements are recorded as pure numbers and normalized to the interval (-1, 1)


1. **timebodyaccelerometermeanx**
2. **timebodyaccelerometermeany**
3. **timebodyaccelerometermeanz**
4. **timebodyaccelerometerstandarddeviationx**
5. **timebodyaccelerometerstandarddeviationy**
6. **timebodyaccelerometerstandarddeviationz**
7. **timegravityaccelerometermeanx**
8. **timegravityaccelerometermeany**
9. **timegravityaccelerometermeanz**
10. **timegravityaccelerometerstandarddeviationx**
11. **timegravityaccelerometerstandarddeviationy**
12. **timegravityaccelerometerstandarddeviationz**
13. **timebodyaccelerometerjerkmeanx**
14. **timebodyaccelerometerjerkmeany**
15. **timebodyaccelerometerjerkmeanz**
16. **timebodyaccelerometerjerkstandarddeviationx**
17. **timebodyaccelerometerjerkstandarddeviationy**
18. **timebodyaccelerometerjerkstandarddeviationz**
19. **timebodygyroscopemeanx**
20. **timebodygyroscopemeany**
21. **timebodygyroscopemeanz**
22. **timebodygyroscopestandarddeviationx**
23. **timebodygyroscopestandarddeviationy2**
24. **timebodygyroscopestandarddeviationz**
25. **timebodygyroscopejerkmeanx**
26. **timebodygyroscopejerkmeany**
27. **timebodygyroscopejerkmeanz**
28. **timebodygyroscopejerkstandarddeviationx**
29. **timebodygyroscopejerkstandarddeviationy**
30. **timebodygyroscopejerkstandarddeviationz**
31. **timebodyaccelerometermagnitudemean**
32. **timebodyaccelerometermagnitudestandarddeviation**
33. **timegravityaccelerometermagnitudemean**
34. **timegravityaccelerometermagnitudestandarddeviation**
35. **timebodyaccelerometerjerkmagnitudemean**
36. **timebodyaccelerometerjerkmagnitudestandarddeviation**
37. **timebodygyroscopemagnitudemean**
38. **timebodygyroscopemagnitudestandarddeviation**
39. **timebodygyroscopejerkmagnitudemean**
40. **timebodygyroscopejerkmagnitudestandarddeviation**
41. **frequencybodyaccelerometermeanx**
42. **frequencybodyaccelerometermeany**
43. **frequencybodyaccelerometermeanz**
44. **frequencybodyaccelerometerstandarddeviationx**
45. **frequencybodyaccelerometerstandarddeviationy**
46. **frequencybodyaccelerometerstandarddeviationz**
47. **frequencybodyaccelerometerjerkmeanx**
48. **frequencybodyaccelerometerjerkmeany**
49. **frequencybodyaccelerometerjerkmeanz**
50. **frequencybodyaccelerometerjerkstandarddeviationx**
51. **frequencybodyaccelerometerjerkstandarddeviationy**
52. **frequencybodyaccelerometerjerkstandarddeviationz**
53. **frequencybodygyroscopemeanx**
54. **frequencybodygyroscopemeany**
55. **frequencybodygyroscopemeanz**
56. **frequencybodygyroscopestandarddeviationx**
57. **frequencybodygyroscopestandarddeviationy**
58. **frequencybodygyroscopestandarddeviationz**
59. **frequencybodyaccelerometermagnitudemean**
60. **frequencybodyaccelerometermagnitudestandarddeviation**
61. **frequencybodyaccelerometerjerkmagnitudemean**
62. **frequencybodyaccelerometerjerkmagnitudestandarddeviation**
63. **frequencybodygyroscopemagnitudemean**
64. **frequencybodygyroscopemagnitudestandarddeviation**
65. **frequencybodygyroscopejerkmagnitudemean**
66. **frequencybodygyroscopejerkmagnitudestandarddeviation**
67. **subject** numeric code of the person who weared the device during the measurements
68. **activity** activity performed by the subject during the measurement

For the full details about the data, please see:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Data transformations
The test data were imported from the file test\X_test.txt.
The subjects of the measurements were imported from the file test\subject_test.txt.
The train data were imported from the file train\X_train.txt.
The subjects of the measurements were imported from the file train\subject_train.txt.

The two data frames were merged adding the observations.

The extra variables (columns) were removed from the data frame.


At the end of the execution you get two data frames:
- **linted**: it contains the detalied merged data
- **summarized**: it contains the summarized data as detailed above




