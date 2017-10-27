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
1. `timeDomainGravityAccelerometerMeanZ`

### Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:
timeDomainGravityAccelerometerStandardDeviationX
timeDomainGravityAccelerometerStandardDeviationY
timeDomainGravityAccelerometerStandardDeviationZ

### Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
timeDomainBodyAccelerometerJerkMeanX
timeDomainBodyAccelerometerJerkMeanY
timeDomainBodyAccelerometerJerkMeanZ

### Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
timeDomainBodyAccelerometerJerkStandardDeviationX
timeDomainBodyAccelerometerJerkStandardDeviationY
timeDomainBodyAccelerometerJerkStandardDeviationZ

### Average time-domain body angular velocity in the X, Y and Z directions:
timeDomainBodyGyroscopeMeanX
timeDomainBodyGyroscopeMeanY
timeDomainBodyGyroscopeMeanZ

### Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:
timeDomainBodyGyroscopeStandardDeviationX
timeDomainBodyGyroscopeStandardDeviationY
timeDomainBodyGyroscopeStandardDeviationZ

### Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:
timeDomainBodyGyroscopeJerkMeanX
timeDomainBodyGyroscopeJerkMeanY
timeDomainBodyGyroscopeJerkMeanZ

### Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:
timeDomainBodyGyroscopeJerkStandardDeviationX
timeDomainBodyGyroscopeJerkStandardDeviationY
timeDomainBodyGyroscopeJerkStandardDeviationZ

### Average and standard deviation of the time-domain magnitude of body acceleration:
timeDomainBodyAccelerometerMagnitudeMean
timeDomainBodyAccelerometerMagnitudeStandardDeviation

### Average and standard deviation of the time-domain magnitude of gravity acceleration:
timeDomainGravityAccelerometerMagnitudeMean
timeDomainGravityAccelerometerMagnitudeStandardDeviation

### Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):
timeDomainBodyAccelerometerJerkMagnitudeMean
timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation

### Average and standard deviation of the time-domain magnitude of body angular velocity:
timeDomainBodyGyroscopeMagnitudeMean
timeDomainBodyGyroscopeMagnitudeStandardDeviation

### Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):
timeDomainBodyGyroscopeJerkMagnitudeMean
timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation

### Average frequency-domain body acceleration in the X, Y and Z directions:
frequencyDomainBodyAccelerometerMeanX
frequencyDomainBodyAccelerometerMeanY
frequencyDomainBodyAccelerometerMeanZ

### Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:
frequencyDomainBodyAccelerometerStandardDeviationX
frequencyDomainBodyAccelerometerStandardDeviationY
frequencyDomainBodyAccelerometerStandardDeviationZ

### Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions: 
frequencyDomainBodyAccelerometerMeanFrequencyX
frequencyDomainBodyAccelerometerMeanFrequencyY
frequencyDomainBodyAccelerometerMeanFrequencyZ

### Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
frequencyDomainBodyAccelerometerJerkMeanX
frequencyDomainBodyAccelerometerJerkMeanY
frequencyDomainBodyAccelerometerJerkMeanZ

### Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
frequencyDomainBodyAccelerometerJerkStandardDeviationX
frequencyDomainBodyAccelerometerJerkStandardDeviationY
frequencyDomainBodyAccelerometerJerkStandardDeviationZ

### Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
frequencyDomainBodyAccelerometerJerkMeanFrequencyX
frequencyDomainBodyAccelerometerJerkMeanFrequencyY
frequencyDomainBodyAccelerometerJerkMeanFrequencyZ

### Average frequency-domain body angular velocity in the X, Y and Z directions:
frequencyDomainBodyGyroscopeMeanX
frequencyDomainBodyGyroscopeMeanY
frequencyDomainBodyGyroscopeMeanZ

### Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:
frequencyDomainBodyGyroscopeStandardDeviationX
frequencyDomainBodyGyroscopeStandardDeviationY
frequencyDomainBodyGyroscopeStandardDeviationZ

### Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:
frequencyDomainBodyGyroscopeMeanFrequencyX
frequencyDomainBodyGyroscopeMeanFrequencyY
frequencyDomainBodyGyroscopeMeanFrequencyZ

### Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:
frequencyDomainBodyAccelerometerMagnitudeMean
frequencyDomainBodyAccelerometerMagnitudeStandardDeviation
frequencyDomainBodyAccelerometerMagnitudeMeanFrequency

### Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):
`frequencyDomainBodyAccelerometerJerkMagnitudeMean`
`frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation`
`frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency`

### Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:
`frequencyDomainBodyGyroscopeMagnitudeMean`
`frequencyDomainBodyGyroscopeMagnitudeStandardDeviation`
`frequencyDomainBodyGyroscopeMagnitudeMeanFrequency`

### Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):
`frequencyDomainBodyGyroscopeJerkMagnitudeMean`
`frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation`
`frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency`
