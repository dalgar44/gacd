# load libraries
library(readr)
library(dplyr)

# load activity labels
activity_labels <- read_table("./data/activity_labels.txt", col_names = c("id", "name"))

# read list of feature labels
features <- read_table("./data/features.txt", col_names = FALSE)
feature_names <- unlist(features[2])

# filter feature labels
mean_std_feature_names <- sort(c(grep("mean", feature_names, ignore.case = TRUE),
                                 grep("std", feature_names, ignore.case = TRUE)))

#---------------
# training data
#---------------
# read training data set features and set descriptive feature names
train_x <- read_table("./data/train/X_train.txt", col_names=feature_names)

# filter training data set to only mean and standard deviation features
train_x <- train_x[,mean_std_feature_names]

# read training record labels
train_y <- read_table("./data/train/y_train.txt", col_names="activity")

# read subject id's for training records
train_s <- read_table("./data/train/subject_train.txt", col_names="subject")

# combine training subject, label and features into single dataframe
train <- cbind(train_s, train_y, train_x)

#-----------
# test data
#-----------
# read test data set features and set descriptive feature names
test_x <- read_table("./data/test/X_test.txt", col_names=feature_names)

# filter test data set to only mean and standard deviation features
test_x <- test_x[,mean_std_feature_names]

# read test record labels
test_y <- read_table("./data/test/y_test.txt", col_names="activity")

# read subject id's for test records
test_s <- read_table("./data/test/subject_test.txt", col_names="subject")

# combine test subject, label and features into single dataframe
test <- cbind(test_s, test_y, test_x)

#-------------------
# combined data set
#-------------------
# combine training and test dataset rows
comb <- rbind(train, test)

# translate activity codes to descriptive activity labels
comb$activity <- activity_labels$name[comb$activity]

# convert subject and activity columns to factors
comb$subject <- as.factor(comb$subject)
comb$activity <- as.factor(comb$activity)

# group records by subject and activity and calculate the mean for all features
comb_mean <- comb %>% group_by(subject, activity) %>% summarize_all(mean)

# write resultant tidy data set to csv file
write.csv(comb_mean, "./data/mean_by_subject_and_activity.csv")
