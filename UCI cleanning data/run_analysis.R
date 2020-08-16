# Set working directory

setwd("./UCI cleanning data/UCI HAR Dataset/")


#### READ COLNAMES FROM FEATURES.TXT
name_cols<-read.table(file = "./features.txt")


####### load subject_train
str_url_folder_train<-"./train/"
f<-paste(str_url_folder_train,"subject_train.txt",sep = "")
con_subject_train<-file(f,"rt")

subject_train<-read.table(file = con_subject_train,nrows = 10,header = T, col.names = "subject_train" )
close(con_subject_train)

x_train<-read.table(file = "./train/X_train.txt",nrows = 10,header = T )
colnames(x_train)<-name_cols[,2]

y_train<-read.table(file = "./train/y_train.txt",nrows = 10,header = T, col.names = "y_train")


######## Read all docs Test ###########################

subject_test<-read.table(file = "./test/subject_test.txt",nrows = 10,header = T, col.names = "subject_test" )

x_test<-read.table(file = "./test/X_test.txt",nrows = 10,header = T)
colnames(x_test)<-name_cols[,2]

y_test<-read.table(file = "./test/y_test.txt",nrows = 10,header = T,col.names = "y_test" )


########----TEST------------------------------------------------------------


body_acc_x_test<-read.table(file = "./test/Inertial Signals/body_acc_x_test.txt",nrows = 10,header = T)
colnames(body_acc_x_test)<-paste("body_acc_x_test_",seq(1:length(body_acc_x_test)),sep = "")

body_acc_y_test<-read.table(file = "./test/Inertial Signals/body_acc_y_test.txt",nrows = 10,header = T)
colnames(body_acc_y_test)<-paste("body_acc_y_test_",seq(1:length(body_acc_y_test)),sep = "")

body_acc_z_test<-read.table(file = "./test/Inertial Signals/body_acc_z_test.txt",nrows = 10,header = T)
colnames(body_acc_z_test)<-paste("body_acc_z_test_",seq(1:length(body_acc_z_test)),sep = "")

##--------------------------------------------------------------------------------

body_gyro_x_test<-read.table(file = "./test/Inertial Signals/body_gyro_x_test.txt",nrows = 10,header = T )
colnames(body_gyro_x_test)<-paste("body_gyro_x_test_",seq(1:length(body_gyro_x_test)),sep = "")

body_gyro_y_test<-read.table(file = "./test/Inertial Signals/body_gyro_y_test.txt",nrows = 10,header = T )
colnames(body_gyro_y_test)<-paste("body_gyro_y_test_",seq(1:length(body_gyro_y_test)),sep = "")

body_gyro_z_test<-read.table(file = "./test/Inertial Signals/body_gyro_z_test.txt",nrows = 10,header = T )
colnames(body_gyro_z_test)<-paste("body_gyro_z_test_",seq(1:length(body_gyro_z_test)),sep = "")

#---------------------------------------------------------------------------

total_acc_x_test<-read.table(file = "./test/Inertial Signals/total_acc_x_test.txt",nrows = 10,header = T )
colnames(total_acc_x_test)<-paste("total_acc_x_test_",seq(1:length(total_acc_x_test)),sep = "")

total_acc_y_test<-read.table(file = "./test/Inertial Signals/total_acc_y_test.txt",nrows = 10,header = T )
colnames(total_acc_y_test)<-paste("total_acc_y_test_",seq(1:length(total_acc_y_test)),sep = "")

total_acc_z_test<-read.table(file = "./test/Inertial Signals/total_acc_z_test.txt",nrows = 10,header = T )
colnames(total_acc_z_test)<-paste("total_acc_z_test_",seq(1:length(total_acc_z_test)),sep = "")

###-------TRAIN----------------------------------------------------------------


body_acc_x_train<-read.table(file = "./train/Inertial Signals/body_acc_x_train.txt",nrows = 10,header = T )
colnames(body_acc_x_train)<-paste("body_acc_x_train_",seq(1:length(body_acc_x_train)),sep = "")

body_acc_y_train<-read.table(file = "./train/Inertial Signals/body_acc_y_train.txt",nrows = 10,header = T )
colnames(body_acc_y_train)<-paste("body_acc_y_train_",seq(1:length(body_acc_y_train)),sep = "")

body_acc_z_train<-read.table(file = "./train/Inertial Signals/body_acc_z_train.txt",nrows = 10,header = T )
colnames(body_acc_z_train)<-paste("body_acc_z_train_",seq(1:length(body_acc_z_train)),sep = "")

##-----------------------------------------------------------------

body_gyro_x_train<-read.table(file = "./train/Inertial Signals/body_gyro_x_train.txt",nrows = 10,header = T )
colnames(body_gyro_x_train)<-paste("body_gyro_x_train_",seq(1:length(body_gyro_x_train)),sep = "")

body_gyro_y_train<-read.table(file = "./train/Inertial Signals/body_gyro_y_train.txt",nrows = 10,header = T )
colnames(body_gyro_y_train)<-paste("body_gyro_y_train_",seq(1:length(body_gyro_y_train)),sep = "")

body_gyro_z_train<-read.table(file = "./train/Inertial Signals/body_gyro_z_train.txt",nrows = 10,header = T )
colnames(body_gyro_z_train)<-paste("body_gyro_z_train_",seq(1:length(body_gyro_z_train)),sep = "")


#---------------------------------------------------------------------

total_acc_x_train<-read.table(file = "./train/Inertial Signals/total_acc_x_train.txt",nrows = 10,header = T )
colnames(total_acc_x_train)<-paste("total_acc_x_train_",seq(1:length(total_acc_x_train)),sep = "")

total_acc_y_train<-read.table(file = "./train/Inertial Signals/total_acc_y_train.txt",nrows = 10,header = T )
colnames(total_acc_y_train)<-paste("total_acc_y_train_",seq(1:length(total_acc_y_train)),sep = "")

total_acc_z_train<-read.table(file = "./train/Inertial Signals/total_acc_z_train.txt",nrows = 10,header = T )
colnames(total_acc_z_train)<-paste("total_acc_z_train_",seq(1:length(total_acc_z_train)),sep = "")

#-----------------------------#############  MERGE  ######################--------------------------------------------

#marge subjects x, y (test vs train)

s1<-data.frame(subject_test,subject_train)
s2<-data.frame(x_test,x_train)
s3<-data.frame(y_test,y_train)

#marge body_acc x,y,z (test vs train) 
s4<-data.frame(body_acc_x_test,body_acc_x_train,body_acc_y_test,body_acc_y_train,body_acc_z_test,body_acc_z_train)

#marge body_gyro x,y,z (test vs train)
s5<-data.frame(body_gyro_x_test,body_gyro_x_train,body_gyro_y_test,body_gyro_y_train,body_gyro_z_test,body_gyro_z_train)

#marge total_acc x,y,z (test vs train) 
s6<-data.frame(total_acc_x_test,total_acc_x_train,total_acc_y_test,total_acc_y_train,total_acc_z_test,total_acc_z_train)


####----------------------------FINAL DATASET -------------------------------------------------


#Dataset with names from the source
dataset_coursera<-data.frame(s1,s2,s3,s4,s5,s6)
View(dataset_coursera)



#Dataset with colnames from features.txt
dataset_coursera2<-data.frame(s1,s2,s3,s4,s5,s6)


###--------------------------------------measurements

n<-grep(pattern = "*mean",x = colnames(dataset_coursera2))
measurements_mean<-dataset_coursera2[,n]

n<-grep(pattern = "*std",x = colnames(dataset_coursera2))
measurements_std<-dataset_coursera2[,n]

##---------------------------------------Final Dataset 
View(dataset_coursera2)


