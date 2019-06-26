trainingdatax <- read.table('C:/Victoria/Python files/Johns Hopkins Data Science Specialization/Getting and Cleaning Data Project/train/X_train.txt')
trainingdatay <- read.table('C:/Victoria/Python files/Johns Hopkins Data Science Specialization/Getting and Cleaning Data Project/train/y_train.txt')
trainingdatasubject <- read.table('C:/Victoria/Python files/Johns Hopkins Data Science Specialization/Getting and Cleaning Data Project/train/subject_train.txt')
testdatax <- read.table('C:/Victoria/Python files/Johns Hopkins Data Science Specialization/Getting and Cleaning Data Project/test/X_test.txt')
testdatay <- read.table('C:/Victoria/Python files/Johns Hopkins Data Science Specialization/Getting and Cleaning Data Project/test/y_test.txt')
testdatasubject <- read.table('C:/Victoria/Python files/Johns Hopkins Data Science Specialization/Getting and Cleaning Data Project/test/subject_test.txt')

activitylabels <- read.table('C:/Victoria/Python files/Johns Hopkins Data Science Specialization/Getting and Cleaning Data Project/activity_labels.txt')
testlabeled <- activitylabels$V2[testdatay[1:2947,]]
traininglabeled <- activitylabels$V2[trainingdatay[1:7352,]]

totaltraining <- cbind(trainingdatasubject, traininglabeled)
totaltraining <- cbind(totaltraining, trainingdatax)

totaltest <- cbind(testdatasubject, testlabeled)
totaltest <- cbind(totaltest, testdatax)

featureslabels <- read.table('C:/Victoria/Python files/Johns Hopkins Data Science Specialization/Getting and Cleaning Data Project/features.txt')
featureslabelsedited <- tolower(gsub("[[:punct:]]", "", featureslabels$V2)) 
featureslabelsnew <- c('subjectnum', 'activity', featureslabelsedited)


colnames(totaltest) <- featureslabelsnew
colnames(totaltraining) <- featureslabelsnew

totaltotal <- rbind(totaltest, totaltraining)

totaltotalmeansd <- totaltotal[grep('mean|sd', names(totaltotal))]

totaltotalmean <- totaltotalmeansd[grep('mean|subjectnum|activity', names(totaltotalmeansd))]
totaltotalmean