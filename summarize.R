## Summarize by subject


## Set the groups for the summary
## Need to take into account alsto the movementtype and the axis
## because the table was made vertical by merging the compatible columns
summarized <- group_by(linted, subject, movementtype, axis)

## Summarize the values
summarized <- summarize(summarized,
        lineramean = mean(linearmean),
        linearstandarddeviation = mean(linearstandarddeviation),
        angularmean = mean(angularmean),
        angularstandarddeviation = mean(angularstandarddeviation),
        frequencylinearmean = mean(frequencylinearmean),
        frequencylinearstandarddeviation = mean(frequencylinearstandardeviation),
        frequencyangularmean = mean(frequencyangularmean),
        frequencyangularstandarddeviation = mean(frequencyangularstandarddeviation))
