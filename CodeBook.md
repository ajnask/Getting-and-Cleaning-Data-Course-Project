# Code Book for Coursera *Getting and Cleaning Data* course project

The data set that this code book is connected to is in the `tidy_data.txt` file of this repository.

See the `README.md` file for any background information about the data set.

# Data

The `tidy_data.txt` file is a text file, containing space-seperated values
The first row contains the names of the variables, which are listed and described below, and the following rows contains the values of these variables

# Variables

Each row contains, for a given subject and activity, 79 averaged signal measurements.

1. Subject_ID
	* Subject ID, integer, ranges from 1 to 30
2. Activity
	* Activity names, string with 6 possible values
		* WALKING : Subject was walking
		* WALKING_UPSTAIRS : Subject was walking upstairs
		* WALKING_DOWNSTAIRS : 