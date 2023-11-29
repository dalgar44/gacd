# load libraries
library(readr)
library(dplyr)

# load activity labels
activity_labels <- read_table("./data/activity_labels.txt", col_names = c("id", "name"))

# read list of feature labels
features <- read_table("./data/features.txt", col_names = FALSE)
feature_names <- unlist(features[2])
mean_std_feature_names <- sort(c(grep("mean", feature_names, ignore.case = TRUE), grep("std", feature_names, ignore.case = TRUE)))

train_x <- read_table("./data/train/X_train.txt", col_names=feature_names)
train_x <- train_x[,mean_std_feature_names]
train_y <- read_table("./data/train/y_train.txt", col_names="activity")
train_s <- read_table("./data/train/subject_train.txt", col_names="subject")

train <- cbind(train_s, train_y, train_x)

test_x <- read_table("./data/test/X_test.txt", col_names=feature_names)
test_x <- test_x[,mean_std_feature_names]
test_y <- read_table("./data/test/y_test.txt", col_names="activity")
test_s <- read_table("./data/test/subject_test.txt", col_names="subject")

test <- cbind(test_s, test_y, test_x)

comb <- rbind(train, test)
comb$activity <- activity_labels$name[comb$activity]

comb$subject <- as.factor(comb$subject)
comb$activity <- as.factor(comb$activity)

comb_mean <- comb %>% group_by(subject, activity) %>% summarize_all(mean)
write.csv(comb_mean, "./data/mean_by_subject_and_activity.csv")
