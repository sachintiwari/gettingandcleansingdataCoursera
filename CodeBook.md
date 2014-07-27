<h3>Variables used in run_analysis.R </h3>

<h4>Variables</h4>

fileUrl: Stores the web location of the physical file used for the project

<u>Variables used to store path of test files</u>

x.test.file <- "./UCI HAR Dataset/test/X_test.txt"
y.test.file <- "./UCI HAR Dataset/test/y_test.txt"
subj.test.file <- "./UCI HAR Dataset/test/subject_test.txt"

<h5>Variables used to store path of train files</h5>

x.train.file <- "./UCI HAR Dataset/train/X_train.txt"
y.train.file <- "./UCI HAR Dataset/train/y_train.txt"
subj.train.file <- "./UCI HAR Dataset/train/subject_train.txt"

activity: These are the activities being taken by the volunteers. 

features: Features details the 'name' of data measured.

dstrain: train files data combined with the activities and features.

dstest: train files data combined with the activities and features.

z: combined data of dstest and dstrain

tidyAverage: Dataset containing average by subject and activity

<h3>column names of the testdata, traindata and combineddata datasets</h3>

[1] "tbodyaccmeanx"            "tbodyaccmeany"            "tbodyaccmeanz"            "tbodyaccstdx"            
[5] "tbodyaccstdy"             "tbodyaccstdz"             "tgravityaccmeanx"         "tgravityaccmeany"        
[9] "tgravityaccmeanz"         "tgravityaccstdx"          "tgravityaccstdy"          "tgravityaccstdz"         
[13] "tbodyaccjerkmeanx"        "tbodyaccjerkmeany"        "tbodyaccjerkmeanz"        "tbodyaccjerkstdx"        
[17] "tbodyaccjerkstdy"         "tbodyaccjerkstdz"         "tbodygyromeanx"           "tbodygyromeany"          
[21] "tbodygyromeanz"           "tbodygyrostdx"            "tbodygyrostdy"            "tbodygyrostdz"           
[25] "tbodygyrojerkmeanx"       "tbodygyrojerkmeany"       "tbodygyrojerkmeanz"       "tbodygyrojerkstdx"       
[29] "tbodygyrojerkstdy"        "tbodygyrojerkstdz"        "tbodyaccmagmean"          "tbodyaccmagstd"          
[33] "tgravityaccmagmean"       "tgravityaccmagstd"        "tbodyaccjerkmagmean"      "tbodyaccjerkmagstd"      
[37] "tbodygyromagmean"         "tbodygyromagstd"          "tbodygyrojerkmagmean"     "tbodygyrojerkmagstd"     
[41] "fbodyaccmeanx"            "fbodyaccmeany"            "fbodyaccmeanz"            "fbodyaccstdx"            
[45] "fbodyaccstdy"             "fbodyaccstdz"             "fbodyaccjerkmeanx"        "fbodyaccjerkmeany"       
[49] "fbodyaccjerkmeanz"        "fbodyaccjerkstdx"         "fbodyaccjerkstdy"         "fbodyaccjerkstdz"        
[53] "fbodygyromeanx"           "fbodygyromeany"           "fbodygyromeanz"           "fbodygyrostdx"           
[57] "fbodygyrostdy"            "fbodygyrostdz"            "fbodyaccmagmean"          "fbodyaccmagstd"          
[61] "fbodybodyaccjerkmagmean"  "fbodybodyaccjerkmagstd"   "fbodybodygyromagmean"     "fbodybodygyromagstd"     
[65] "fbodybodygyrojerkmagmean" "fbodybodygyrojerkmagstd"  "subject"                  "activity"


<h3>column names of the avergedata dataset -> tidyAverage </h3>

[1] "subject"                  "activity"                 "tbodyaccmeanx"            "tbodyaccmeany"           
[5] "tbodyaccmeanz"            "tbodyaccstdx"             "tbodyaccstdy"             "tbodyaccstdz"            
[9] "tgravityaccmeanx"         "tgravityaccmeany"         "tgravityaccmeanz"         "tgravityaccstdx"         
[13] "tgravityaccstdy"          "tgravityaccstdz"          "tbodyaccjerkmeanx"        "tbodyaccjerkmeany"       
[17] "tbodyaccjerkmeanz"        "tbodyaccjerkstdx"         "tbodyaccjerkstdy"         "tbodyaccjerkstdz"        
[21] "tbodygyromeanx"           "tbodygyromeany"           "tbodygyromeanz"           "tbodygyrostdx"           
[25] "tbodygyrostdy"            "tbodygyrostdz"            "tbodygyrojerkmeanx"       "tbodygyrojerkmeany"      
[29] "tbodygyrojerkmeanz"       "tbodygyrojerkstdx"        "tbodygyrojerkstdy"        "tbodygyrojerkstdz"       
[33] "tbodyaccmagmean"          "tbodyaccmagstd"           "tgravityaccmagmean"       "tgravityaccmagstd"       
[37] "tbodyaccjerkmagmean"      "tbodyaccjerkmagstd"       "tbodygyromagmean"         "tbodygyromagstd"         
[41] "tbodygyrojerkmagmean"     "tbodygyrojerkmagstd"      "fbodyaccmeanx"            "fbodyaccmeany"           
[45] "fbodyaccmeanz"            "fbodyaccstdx"             "fbodyaccstdy"             "fbodyaccstdz"            
[49] "fbodyaccjerkmeanx"        "fbodyaccjerkmeany"        "fbodyaccjerkmeanz"        "fbodyaccjerkstdx"        
[53] "fbodyaccjerkstdy"         "fbodyaccjerkstdz"         "fbodygyromeanx"           "fbodygyromeany"          
[57] "fbodygyromeanz"           "fbodygyrostdx"            "fbodygyrostdy"            "fbodygyrostdz"           
[61] "fbodyaccmagmean"          "fbodyaccmagstd"           "fbodybodyaccjerkmagmean"  "fbodybodyaccjerkmagstd"  
[65] "fbodybodygyromagmean"     "fbodybodygyromagstd"      "fbodybodygyrojerkmagmean" "fbodybodygyrojerkmagstd" 
