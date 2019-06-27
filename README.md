# Getting-and-Cleaning-Data-Course-Project---Human-Activity-Data
This data project involved collecting exercise metrics of two groups of people (test and training) doing one of six activities (walking, walking upstairs, walking downstairs, sitting, standing, or laying). Below is a description of the data files that were used in this project.

The trainingdatax and testdatax files contain the raw exercise data from the training group and the test group, respectively. The trainingdatay and testdatay files contain information regarding the specific activity that the training and test data individuals were doing, labeled with a number. The trainingdatasubject and testdatasubject files contain information on the individual that participated for each data row, given by a number.

The activitylabels file is a conversion table file that matches the activity numbers from trainingdatay and testdatay to the 6 different verbal descriptions of the activity. The testlabeled and traininglabeled files contain the 'translated' files, converting trainingdatay and testdatay into the English descriptions of their activity label. 

totaltraining is a data file that merges three of the data files relating to the training group: the subject information from trainingdatasubject, the verbal activity description from traininglabeled, and the raw data numbers from trainingdatax.
Similarly, totaltest is a merged data file of testdatasubject, testlabeled and testdatax.

featureslabels is a file that contains the descriptions of each of the many data points collected for each group (561 in total).

featureslabelsedited is the same as the featureslabels file except that the descriptions are in lowercase and with extra symbols such as () removed.

featureslabelsnew adds two new labels to the beginning of featureslabelsedited: 'subjectnum' and 'activity'. This labels are added to be the column names for totaltest and totaltraining.

Finally, totaltotal is the merged and labeled data file containing both totaltest and totaltraining.

totaltotalmeansd is a subset of totaltotal containing only data that includes either a mean or standard deviation. 

totaltotalmean is a subset of totaltotalmeansd containing only data that includes a mean.

