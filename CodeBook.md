# Getting and Cleaning Data Course Project

## Wearable computing data Code Book
## This tidy dataset contain wearable computing data for 30 subjects

## References: 

* Credit for the original dataset and study goes to:
* [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

## Prepared by: Jacques du Plessis
## Date: 2017-06-04

##Codebook

### Data grouped by Subject and Activity:

* [1] Subject - An integer value between 1 and 30
* [2] Activity - An activity label of six different activities (WALKING
, WALKING_UPSTAIRS
, WALKING_DOWNSTAIRS, SITTING, STANDING
, LAYING)

## Aggregated mean time based measurements:

* [3] timebodyacceleration-mean-x 
	- mean time of body acceleration on x axis 

* [4] timebodyacceleration-mean-y 
	- mean time of body acceleration on y axis
* [5] timebodyacceleration-mean-z 
	- mean time of body acceleration on z axis
* [6] timebodyacceleration-sd-x 
	- standard deviation of body acceleration on x axis
* [7] timebodyacceleration-sd-y 
	- standard deviation of body acceleration on y axis
* [8] timebodyacceleration-sd-z 
	- standard deviation of body acceleration on z axis
* [9] timegravityacceleration-mean-x 
	- mean time of gravity acceleration on x axis
* [10] timegravityacceleration-mean-y 
	- mean time of gravity acceleration on y axis
* [11] timegravityacceleration-mean-z 
	- mean time of gravity acceleration on z axis
* [12] timegravityacceleration-sd-x 
	- standard deviation of gravity acceleration on x axis
* [13] timegravityacceleration-sd-y 
	- standard deviation of gravity acceleration on y axis
* [14] timegravityacceleration-sd-z 
	- standard deviation of gravity acceleration on z axis
* [15] timebodyaccelerationjerk-mean-x
	- mean time of body acceleration jerk on x axis
* [16] timebodyaccelerationjerk-mean-y
	- mean time of body acceleration jerk on y axis
* [17] timebodyaccelerationjerk-mean-z
	- mean time of body acceleration jerk on z axis
* [18] timebodyaccelerationjerk-sd-x 
	- standard deviation of body acceleration jerk on x axis
* [19] timebodyaccelerationjerk-sd-x 
	- standard deviation of body acceleration jerk on x axis
* [20] timebodyaccelerationjerk-sd-x 
	- standard deviation of body acceleration jerk on x axis
* [21] timebodygyro-mean-x
	- mean time of body gyroscopic movement on x axis
* [22] timebodygyro-mean-y
	- mean time of body gyroscopic movement on y axis
* [23] timebodygyro-mean-z
	- mean time of body gyroscopic movement on z axis
* [24] timebodygyro-sd-x 
	- standard deviation of body gyroscopic movement on x axis
* [25] timebodygyro-sd-y 
	- standard deviation of body gyroscopic movement on y axis
* [26] timebodygyro-sd-z 
	- standard deviation of body gyroscopic movement on z axis
* [27] timebodygyrojerk-mean-x
	- mean time of body gyroscopic jerk movement on x axis
* [28] timebodygyrojerk-mean-y
	- mean time of body gyroscopic jerk movement on y axis
* [29] timebodygyrojerk-mean-z
	- mean time of body gyroscopic jerk movement on z axis
* [30] timebodygyrojerk-sd-x
	- standard deviation of body gyroscopic jerk movement on x axis
* [31] timebodygyrojerk-sd-y
	- standard deviation of body gyroscopic jerk movement on y axis
* [32] timebodygyrojerk-sd-z
	- standard deviation of body gyroscopic jerk movement on z axis
* [33] timebodyaccelerationmagnitude-mean
	- mean time of body acceleation magnitude
* [34] timebodyaccelerationmagnitude-sd
	- standard deviation of body acceleation magnitude
* [35] timegravityaccelerationmagnitude-mean
	- mean time of gravity acceleation magnitude
* [36] timegravityaccelerationmagnitude-sd
	- standard deviation of gravity acceleation magnitude
* [37] timebodyaccelerationjerkmagnitude-mean
	- mean time of gravity acceleation jerk magnitude
* [38] timebodyaccelerationjerkmagnitude-sd
	- standard deviation of gravity acceleation jerk magnitude
* [39] timebodygyromagnitude-mean 
	- mean time of body gyroscopic movement magnitude
* [40] timebodygyromagnitude-sd 
	- standard deviation of body gyroscopic movement magnitude
* [41] timebodygyrojerkmagnitude-mean
	- mean time of body gyroscopic jerk movement magnitude
* [42] timebodygyrojerkmagnitude-sd
	- standard deviation of body gyroscopic jerk movement magnitude

## Aggregated mean frequency based measurements:

* [43] frequencybodyacceleration-mean-x
	- mean frequency of body acceleation on x axis
* [44] frequencybodyacceleration-mean-y
	- mean frequency of body acceleation on y axis
* [45] frequencybodyacceleration-mean-z
	- mean frequency of body acceleation on z axis
* [46] frequencybodyacceleration-sd-x
	- standard deviation of body acceleation on x axis
* [47] frequencybodyacceleration-sd-y
	- standard deviation of body acceleation on y axis
* [48] frequencybodyacceleration-sd-z
	- standard deviation of body acceleation on z axis
* [49] frequencybodyaccelerationjerk-mean-x
	- mean frequency of body acceleation jerk on y axis
* [50] frequencybodyaccelerationjerk-mean-y
	- mean frequency of body acceleation jerk on z axis
* [51] frequencybodyaccelerationjerk-mean-z
	- mean frequency of body acceleation jerk on x axis
* [52] frequencybodyaccelerationjerk-sd-x 
	- standard deviation of body acceleation jerk on y axis
* [53] frequencybodyaccelerationjerk-sd-y 
	- standard deviation of body acceleation jerk on z axis 
* [54] frequencybodyaccelerationjerk-sd-z 
	- standard deviation of body acceleation jerk on y axis
* [55] frequencybodygyro-mean-x
	- mean frequency of body gyroscopic movement on x axis
* [56] frequencybodygyro-mean-y
	- mean frequency of body gyroscopic movement on y axis
* [57] frequencybodygyro-mean-z
	- mean frequency of body gyroscopic movement on z axis
* [58] frequencybodygyro-sd-x
-	standard deviation of body gyroscopic movement on x axis
* [59] frequencybodygyro-sd-y
-	standard deviation of body gyroscopic movement on y axis
* [60] frequencybodygyro-sd-z
-	standard deviation of body gyroscopic movement on z axis
* [61] frequencybodyaccelerationmagnitude-mean
	- mean frequency of body acceleation magnitude
* [62] frequencybodyaccelerationmagnitude-sd
	- standard deviation  of body acceleation magnitude
* [63] frequencybodyaccelerationjerkmagnitude-mean
	- mean frequency of body acceleation jerk magnitude
* [64] frequencybodyaccelerationjerkmagnitude-sd
	- standard deviation of body acceleation jerk magnitude
* [65] frequencybodygyromagnitude-mean
	- mean frequency of body gyroscopic acceleation magnitude
* [66] frequencybodygyromagnitude-sd
	- standard deviation  of body gyroscopic acceleation magnitude
* [67] frequencybodygyrojerkmagnitude-mean
 	- mean frequency of body gyroscopic acceleation jerk magnitude
* [68] frequencybodygyromagnitude-sd
	- standard deviation  of body gyroscopic acceleation jerk magnitude
