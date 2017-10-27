# Code Book for Coursera *Getting and Cleaning Data* course project

The data set that this code book is connected to is in the `tidy_data.txt` file of this repository.

See the `README.md` file for any background information about the data set.

# Data

The `tidy_data.txt` file is a text file, containing space-seperated values
The first row contains the names of the variables, which are listed and described below, and the following rows contains the values of these variables

# Variables

Each row contains, for a given subject and activity, 79 averaged signal measurements.

1. `Subject_ID`
	* Subject ID, integer, ranges from 1 to 30
2. `Activity`
	* Activity names, string with 6 possible values
		* `WALKING` : Subject was walking
		* `WALKING_UPSTAIRS` : Subject was walking upstairs
		* `WALKING_DOWNSTAIRS` : Subject was walking downstairs
		* `SITTING` : Subject was sitting
		* `STANDING` : Subject was standing
		* `LAYING` : Subject was laying down

    All measurements are floating-point values, normalised and bounded within [-1,1].

    Prior to normalisation, acceleration measurements (variables containing `Accelerometer`) were made in *g*'s (9.81 m.s⁻²) and gyroscope measurements (variables containing `Gyroscope`) were made in radians per second (rad.s⁻¹).

    Magnitudes of three-dimensional signals (variables containing `Magnitude`) were calculated using the Euclidean norm.

    The measurements are classified in two domains:

    * Time-domain signals (variables prefixed with `timeDomain`), resulting from accelerometer and gyroscope raw signals.
    * Frequencey-domain signals (variables prefixed with `frequencyDomain`), resulting from the application of Fast Fourier Transform (FFT) to some of the time-domain signals.

Average time-domain body acceleration in the X, Y and Z directions:

3. `timeDomainBodyAccelerometerMeanX`
4. `timeDomainBodyAccelerometerMeanY`
5. `timeDomainBodyAccelerometerMeanZ`

Standard deviation of the time-domain body acceleration in the X, Y and Z directions:

6. `timeDomainBodyAccelerometerStandardDeviationX`
7. `timeDomainBodyAccelerometerStandardDeviationY`
8. `timeDomainBodyAccelerometerStandardDeviationZ`

Average time-domain gravity acceleration in the X, Y and Z directions:

9. `timeDomainGravityAccelerometerMeanX`
10. `timeDomainGravityAccelerometerMeanY`
11. `timeDomainGravityAccelerometerMeanZ`

Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:
{:start="12"}
12. `timeDomainGravityAccelerometerStandardDeviationX`
13. `timeDomainGravityAccelerometerStandardDeviationY`
14. `timeDomainGravityAccelerometerStandardDeviationZ`

Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

15. `timeDomainBodyAccelerometerJerkMeanX`
16. `timeDomainBodyAccelerometerJerkMeanY`
17. `timeDomainBodyAccelerometerJerkMeanZ`

Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

18. `timeDomainBodyAccelerometerJerkStandardDeviationX`
19. `timeDomainBodyAccelerometerJerkStandardDeviationY`
20. `timeDomainBodyAccelerometerJerkStandardDeviationZ`

Average time-domain body angular velocity in the X, Y and Z directions:

21. `timeDomainBodyGyroscopeMeanX`
22. `timeDomainBodyGyroscopeMeanY`
23. `timeDomainBodyGyroscopeMeanZ`

Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:

24. `timeDomainBodyGyroscopeStandardDeviationX`
25. `timeDomainBodyGyroscopeStandardDeviationY`
26. `timeDomainBodyGyroscopeStandardDeviationZ`

Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

27. `timeDomainBodyGyroscopeJerkMeanX`
1. `timeDomainBodyGyroscopeJerkMeanY`
1. `timeDomainBodyGyroscopeJerkMeanZ`

Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

30. `timeDomainBodyGyroscopeJerkStandardDeviationX`
1. `timeDomainBodyGyroscopeJerkStandardDeviationY`
1. `timeDomainBodyGyroscopeJerkStandardDeviationZ`

Average and standard deviation of the time-domain magnitude of body acceleration:

33. `timeDomainBodyAccelerometerMagnitudeMean`
1. `timeDomainBodyAccelerometerMagnitudeStandardDeviation`

Average and standard deviation of the time-domain magnitude of gravity acceleration:

35. `timeDomainGravityAccelerometerMagnitudeMean`
1. `timeDomainGravityAccelerometerMagnitudeStandardDeviation`

Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

37. `timeDomainBodyAccelerometerJerkMagnitudeMean`
1. `timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation`

Average and standard deviation of the time-domain magnitude of body angular velocity:

39. `timeDomainBodyGyroscopeMagnitudeMean`
1. `timeDomainBodyGyroscopeMagnitudeStandardDeviation`

Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

41. `timeDomainBodyGyroscopeJerkMagnitudeMean`
1. `timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation`

Average frequency-domain body acceleration in the X, Y and Z directions:

43. `frequencyDomainBodyAccelerometerMeanX`
1. `frequencyDomainBodyAccelerometerMeanY`
1. `frequencyDomainBodyAccelerometerMeanZ`

Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:

46. `frequencyDomainBodyAccelerometerStandardDeviationX`
1. `frequencyDomainBodyAccelerometerStandardDeviationY`
1. `frequencyDomainBodyAccelerometerStandardDeviationZ`

Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions: 

1. `frequencyDomainBodyAccelerometerMeanFrequencyX`
1. `frequencyDomainBodyAccelerometerMeanFrequencyY`
1. `frequencyDomainBodyAccelerometerMeanFrequencyZ`

Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

1. `frequencyDomainBodyAccelerometerJerkMeanX`
1. `frequencyDomainBodyAccelerometerJerkMeanY`
1. `frequencyDomainBodyAccelerometerJerkMeanZ`

Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

1. `frequencyDomainBodyAccelerometerJerkStandardDeviationX`
1. `frequencyDomainBodyAccelerometerJerkStandardDeviationY`
1. `frequencyDomainBodyAccelerometerJerkStandardDeviationZ`

Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

1. `frequencyDomainBodyAccelerometerJerkMeanFrequencyX`
1. `frequencyDomainBodyAccelerometerJerkMeanFrequencyY`
1. `frequencyDomainBodyAccelerometerJerkMeanFrequencyZ`

Average frequency-domain body angular velocity in the X, Y and Z directions:

1. `frequencyDomainBodyGyroscopeMeanX`
1. `frequencyDomainBodyGyroscopeMeanY`
1. `frequencyDomainBodyGyroscopeMeanZ`

Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:

1. `frequencyDomainBodyGyroscopeStandardDeviationX`
1. `frequencyDomainBodyGyroscopeStandardDeviationY`
1. `frequencyDomainBodyGyroscopeStandardDeviationZ`

Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:

1. `frequencyDomainBodyGyroscopeMeanFrequencyX`
1. `frequencyDomainBodyGyroscopeMeanFrequencyY`
1. `frequencyDomainBodyGyroscopeMeanFrequencyZ`

Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:

1. `frequencyDomainBodyAccelerometerMagnitudeMean`
1. `frequencyDomainBodyAccelerometerMagnitudeStandardDeviation`
1. `frequencyDomainBodyAccelerometerMagnitudeMeanFrequency`

Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

1. `frequencyDomainBodyAccelerometerJerkMagnitudeMean`
1. `frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation`
1. `frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency`

Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:

1. `frequencyDomainBodyGyroscopeMagnitudeMean`
1. `frequencyDomainBodyGyroscopeMagnitudeStandardDeviation`
1. `frequencyDomainBodyGyroscopeMagnitudeMeanFrequency`

Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):
1. `frequencyDomainBodyGyroscopeJerkMagnitudeMean`
1. `frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation`
1. `frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency`

# Transformations

The following transformations were done to the data
 1. The training and test sets were merged to create one data set.
 1. The measurements on the mean and standard deviation (i.e. signals containing the strings `mean` and `std`) were extracted for each measurement, and the others were discarded.
 1. The `Activity` variable (originally coded as integers ranging from 1 to 6) was replaced with descriptive names
 1. The variable names were replaced with descriptive names
    * Special characters such as (,),- were removed
    * Initial `f` and `t` abbreviations were expanded to `frequencyDomain` and `timeDomain` respectively
    * `Acc`,`Gyro`,`Mag`,`Freq`,`mean`,`std` were expanded to `Accelerometer`,`Gyroscope`,`Magnitude`,`Frequency`,`Mean`,`StandardDeviation` respectively
    * Corrected the mistake `BodyBody` to `Body`
 1. From the data set in step 4, the final data set was created with the average of each variable for each activity and each subject.