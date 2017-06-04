# Getting and Cleaning Data Course Project

## Wearable computing data preparation and cleansing

### Step 1: - Merge the data

* Read the test data with read.table.  
* Observe that the tables have the same layout. Append function is needed.
* Apprend the test and training datasets via rbind function 
* Loads the dplyr library and load the combined data into a dplyr data frame

### Step 2: Extract only the mean and standard deviation columns

* Read the features table
* Use the grep function to search for substring "Mean(" or "Sub("
* Set the names of the dataframe to the value of the features table
* Select only the columns identified in the grep fuction

* Load the subject data files and combine then with rbind
* Mutate (dplyr library) the main data frame by adding a column for the subject data

### Step 3: Load the activity labels

* Load the test and train activity id and inner join (dplyr library) with the activity labels
* Mutate (dplyr library) the main dataframe by adding a column for the activity labels

### Step 4: Descriptive variable names

* make all variables lowercase
* replace t with time
* replace f with frequency
* replace acc with accelerate
* replace mag with magnitude
* replace bodybody with body
* replace mean() with mean
* replace str() with sd

### Step 5: create a second, independent tidy data set

* Sort the data
* select the columsn for the melt operation
* melt the data on Subject and Activity 
* dcast the data with with subject and activity with mean function over all variables
* write to file with write.table

### Mission accomplished :)

