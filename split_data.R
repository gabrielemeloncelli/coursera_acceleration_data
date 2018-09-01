## Select measurements from the body z axis
bodyz <- select(merged, subject, linearmean = tBodyAccmeanZ,
                linearstandarddeviation = tBodyAccstdZ, angularmean = tBodyGyromeanZ,
                angularstandarddeviation = tBodyGyrostdZ, frequencylinearmean = fBodyAccmeanZ,
                frequencylinearstandardeviation = fBodyAccstdZ,
                frequencyangularmean = fBodyGyromeanZ,
                frequencyangularstandarddeviation = fBodyGyrostdZ)

## Add the factor columns
bodyz <- mutate(bodyz, axis = 'z', movementtype = 'body')

## Select measurements from the body y axis
bodyy <- select(merged, subject, linearmean = tBodyAccmeanY,
                linearstandarddeviation = tBodyAccstdY, angularmean = tBodyGyromeanY,
                angularstandarddeviation = tBodyGyrostdY, frequencylinearmean = fBodyAccmeanY,
                frequencylinearstandardeviation = fBodyAccstdY,
                frequencyangularmean = fBodyGyromeanY,
                frequencyangularstandarddeviation = fBodyGyrostdY)

## Add the factor columns
bodyy <- mutate(bodyy, axis = 'y', movementtype = 'body')

## Select measurements from the body x axis
bodyx <- select(merged, subject, linearmean = tBodyAccmeanX,
                linearstandarddeviation = tBodyAccstdX, angularmean = tBodyGyromeanX,
                angularstandarddeviation = tBodyGyrostdX, frequencylinearmean = fBodyAccmeanX,
                frequencylinearstandardeviation = fBodyAccstdX,
                frequencyangularmean = fBodyGyromeanX,
                frequencyangularstandarddeviation = fBodyGyrostdX)

## Add the factor columns
bodyx <- mutate(bodyx, axis = 'x', movementtype = 'body')


## Select measurements from the body jerk z axis
jerkz <- select(merged, subject, linearmean = tBodyAccJerkmeanZ,
                linearstandarddeviation = tBodyAccJerkstdZ, angularmean = tBodyGyroJerkmeanZ,
                angularstandarddeviation = tBodyGyroJerkstdZ, frequencylinearmean = fBodyAccJerkmeanZ,
                frequencylinearstandardeviation = fBodyAccJerkstdZ)

## Add the factor columns and the empty columns
jerkz <- mutate(jerkz, axis = 'z', movementtype = 'jerk', frequencyangularmean = NA,
                frequencyangularstandarddeviation = NA)

## Select measurements from the body jerk y axis
jerky <- select(merged, subject, linearmean = tBodyAccJerkmeanY,
                linearstandarddeviation = tBodyAccJerkstdY, angularmean = tBodyGyroJerkmeanY,
                angularstandarddeviation = tBodyGyroJerkstdY, frequencylinearmean = fBodyAccJerkmeanY,
                frequencylinearstandardeviation = fBodyAccJerkstdY)

## Add the factor columns and the empty columns
jerky <- mutate(jerky, axis = 'y', movementtype = 'jerk', frequencyangularmean = NA,
                frequencyangularstandarddeviation = NA)

## Select measurements from the body jerk x axis
jerkx <- select(merged, subject, linearmean = tBodyAccJerkmeanX,
                linearstandarddeviation = tBodyAccJerkstdX, angularmean = tBodyGyroJerkmeanX,
                angularstandarddeviation = tBodyGyroJerkstdX, frequencylinearmean = fBodyAccJerkmeanX,
                frequencylinearstandardeviation = fBodyAccJerkstdX)

## Add the factor columns and the empty columns
jerkx <- mutate(jerkx, axis = 'x', movementtype = 'jerk', frequencyangularmean = NA,
                frequencyangularstandarddeviation = NA)

## Select measurements from the body gravity z axis
gravityz <- select(merged, subject, linearmean = tGravityAccmeanZ,
                linearstandarddeviation = tGravityAccstdZ)

## Add the factor columns and the empty columns
gravityz <- mutate(gravityz, axis = 'z', movementtype = 'gravity', angularmean = NA,
                angularstandarddeviation = NA, frequencylinearmean = NA,
                frequencylinearstandardeviation = NA, frequencyangularmean = NA,
                frequencyangularstandarddeviation = NA)

## Select measurements from the body gravity y axis
gravityy <- select(merged, subject, linearmean = tGravityAccmeanY,
                   linearstandarddeviation = tGravityAccstdY)

## Add the factor columns and the empty columns
gravityy <- mutate(gravityy, axis = 'y', movementtype = 'gravity', angularmean = NA,
                   angularstandarddeviation = NA, frequencylinearmean = NA,
                   frequencylinearstandardeviation = NA, frequencyangularmean = NA,
                   frequencyangularstandarddeviation = NA)

## Select measurements from the body gravity x axis
gravityx <- select(merged, subject, linearmean = tGravityAccmeanX,
                   linearstandarddeviation = tGravityAccstdX)

## Add the factor columns and the empty columns
gravityx <- mutate(gravityx, axis = 'x', movementtype = 'gravity', angularmean = NA,
                   angularstandarddeviation = NA, frequencylinearmean = NA,
                   frequencylinearstandardeviation = NA, frequencyangularmean = NA,
                   frequencyangularstandarddeviation = NA)

## Select measurements from the body magnitude
bodymag <- select(merged, subject, linearmean = tBodyAccMagmean,
                linearstandarddeviation = tBodyAccMagstd, angularmean = tBodyGyroMagmean,
                angularstandarddeviation = tBodyGyroMagstd, frequencylinearmean = fBodyAccMagmean,
                frequencylinearstandardeviation = fBodyAccMagstd,
                frequencyangularmean = fBodyBodyGyroMagmean,
                frequencyangularstandarddeviation = fBodyBodyGyroMagstd)

## Add the factor columns
bodymag <- mutate(bodymag, axis = 'magnitude', movementtype = 'body')


## Select measurements from the body jerk magnitude
jerkmag <- select(merged, subject, linearmean = tBodyAccJerkMagmean,
                linearstandarddeviation = tBodyAccJerkMagstd, angularmean = tBodyGyroJerkMagmean,
                angularstandarddeviation = tBodyGyroJerkMagstd, frequencylinearmean = fBodyBodyAccJerkMagmean,
                frequencylinearstandardeviation = fBodyBodyAccJerkMagstd,
                frequencyangularmean = fBodyBodyGyroJerkMagmean,
                frequencyangularstandarddeviation = fBodyBodyGyroJerkMagstd)

## Add the factor columns and the empty columns
jerkmag <- mutate(jerkmag, axis = 'magnitude', movementtype = 'jerk')

## Select measurements from the gravity magnitude
gravitymag <- select(merged, subject, linearmean = tGravityAccMagmean,
                   linearstandarddeviation = tGravityAccMagstd)

## Add the factor columns and the empty columns
gravitymag <- mutate(gravitymag, axis = 'magnitude', movementtype = 'gravity', angularmean = NA,
                   angularstandarddeviation = NA, frequencylinearmean = NA,
                   frequencylinearstandardeviation = NA, frequencyangularmean = NA,
                   frequencyangularstandarddeviation = NA)

