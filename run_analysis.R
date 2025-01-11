# Load required libraries
library(tidyverse)

# Step 1: Combine the training and test sets to create a single data set
# Read training data
training_data <- read.table("train/X_train.txt")
training_labels <- read.table("train/y_train.txt")
training_subjects <- read.table("train/subject_train.txt")

# Read test data
test_data <- read.table("test/X_test.txt")
test_labels <- read.table("test/y_test.txt")
test_subjects <- read.table("test/subject_test.txt")

# Combine the training and test data
combined_data <- rbind(training_data, test_data)
combined_labels <- rbind(training_labels, test_labels)
combined_subjects <- rbind(training_subjects, test_subjects)

# Step 2: Extract only the measurements on the mean and standard deviation for each measurement
features <- read.table("features.txt")
mean_std_features <- grep("-(mean|std)\\(\\)", features[, 2])
selected_data <- combined_data[, mean_std_features]

# Step 3: Use descriptive activity names to name the activities in the data set
activity_names <- read.table("activity_labels.txt")
combined_labels[, 1] <- activity_names[combined_labels[, 1], 2]

# Step 4: Appropriately label the data set with descriptive variable names
names(selected_data) <- features[mean_std_features, 2]
names(combined_labels) <- "Activity"
names(combined_subjects) <- "Subject"

# Combine all data into one data set
tidy_dataset <- cbind(combined_subjects, combined_labels, selected_data)

# Step 5: Create a second, independent tidy data set with the average of each variable for each activity and each subject
final_dataset <- tidy_dataset %>%
  group_by(Subject, Activity) %>%
  summarise_all(funs(mean))

# Write the final data set to a text file
write.table(final_dataset, "tidy_dataset.txt", row.name = FALSE)