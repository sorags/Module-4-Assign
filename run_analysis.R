library(tidyverse)

# reading the txt

subject_train <- read.table("UCI HAR Dataset\\train\\subject_train.txt")
X_train <- read.table("UCI HAR Dataset\\train\\X_train.txt", header = FALSE)
Y_train <- read.table("UCI HAR Dataset\\train\\y_train.txt", header = FALSE)

subject_test <- read.table("UCI HAR Dataset\\test\\subject_test.txt")
X_test <- read.table("UCI HAR Dataset\\test\\X_test.txt")
Y_test <- read.table("UCI HAR Dataset\\test\\y_test.txt")

# name the columns in the X tables
features <- read.table("UCI HAR Dataset\\features.txt")
colnames(X_train) <- features$V2
colnames(X_test) <- features$V2

# rename columns
colnames(Y_train) <- "Activity"
colnames(Y_test) <- "Activity"

colnames(subject_test) <- "Subjects"
colnames(subject_train) <- "Subjects"

# bind each group
test_data <- cbind(subject_test, Y_test, X_test)
train_data <- cbind(subject_train, Y_train, X_train)

#merge trh training and thes test sets into one
final_data <- rbind(train_data, test_data)

# filter only measurements on the mean and std dev
mean_stdv_data <- final_data %>% 
  select(Subjects, Activity, grep("mean\\(\\)|std\\(\\)", names(final_data)))


# use descriptive activity names to name the activities in the dataset
activity_labels <- read.table("UCI HAR Dataset\\activity_labels.txt")
colnames(activity_labels) <- c("Activity", "Activity_labels")


mean_stdv_data <- left_join(mean_stdv_data, activity_labels, by= "Activity") %>% 
  select(-"Activity")

# create a tidy data set with the average of each variable for each activity for each subject
avg_data <- mean_stdv_data %>% 
  group_by(Subjects, Activity_labels) %>% 
  summarise(across(everything(), mean, na.rm=TRUE)) %>% 
  ungroup()

# export in txt file
write.table(avg_data, file = "final_tidy_data.txt", row.names = FALSE)




 