# Read training datasets
subject_train <- read.table("./train/subject_train.txt")
y_train <- read.table("./train/y_train.txt")
X_train <- read.table("./train/X_train.txt")

# Read test datasets
subject_test <- read.table("./test/subject_test.txt")
y_test <- read.table("./test/y_test.txt")
X_test <- read.table("./test/X_test.txt")

# Read names of features
features <- read.table("features0.txt")
fnames0 <- as.character(features[,2])

# Introduce more descriptive names for parts of variables
fnames0 <- sub("tBody","Time.Body",fnames0)
fnames0 <- sub("tGravity","Time.Gravity",fnames0)
fnames0 <- sub("fBody","Freq.Body",fnames0)
fnames0 <- sub("-mean",".mean",fnames0)
fnames0 <- sub("-std",".std",fnames0)
fnames0 <- sub("-",".",fnames0)
fnames0 <- sub("Acc","Accel",fnames0)
fnames0 <- sub("Mag","Magn",fnames0)

# Merge raw training and test datasets
subject <- rbind(subject_test,subject_train)
y <- rbind(y_test,y_train)
X <- rbind(X_test,X_train)

# Assemble combined dataframe by merging training and test dataframes
data0 <- cbind(subject,y,X)
names(data0) <- c("subject","activity",fnames0)

# Substitute descriptive activity names in combined dataframe
activity_labels <- read.table("activity_labels.txt")
labels <- as.character(activity_labels[,2])
for (i in 1:6) {data0[data0$activity == i,2] <- labels[i]}

# Identify those features that involve mean and standard deviation 
indset_mean <- grep("mean",fnames0)
indset_meanFreq <- grep("meanFreq",fnames0)
indset <- setdiff(indset_mean,indset_meanFreq)
fnames_mean <- fnames0[indset]
indset_std <- grep("std",fnames0)
fnames_std <- fnames0[indset_std]

# Retain columns in merged dataframe that involve mean and standard deviation
fnames1 <- c("subject","activity",fnames_mean,fnames_std)
data1 <- data0[fnames1]

# Remove auxilliary dataframes, vectors etc
rm(subject_test,y_test,X_test)
rm(subject_train,y_train,X_train)
rm(subject,y,X)
rm(features)
rm(fnames0,fnames1)
rm(fnames_mean,fnames_std)
rm(indset,indset_mean,indset_meanFreq,indset_std)
rm(activity_labels,labels)