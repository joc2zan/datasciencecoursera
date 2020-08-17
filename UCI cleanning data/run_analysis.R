# Set working directory

setwd("./UCI cleanning data/UCI HAR Dataset/")



#### READ COLNAMES FROM FEATURES.TXT
name_cols<-read.table(file = "./features.txt")


####### load subject_train
str_url_folder_train<-"./train/"
f<-paste(str_url_folder_train,"subject_train.txt",sep = "")
con_subject_train<-file(f,"rt")

subject_train<-read.table(file = con_subject_train,header = T, col.names = "subject_train" )
close(con_subject_train)

x_train<-read.table(file = "./train/X_train.txt",header = T )
colnames(x_train)<-name_cols[,2]

y_train<-read.table(file = "./train/y_train.txt",header = T, col.names = "y_train")


######## Read all docs Test ###########################

subject_test<-read.table(file = "./test/subject_test.txt",header = T, col.names = "subject_test" )

x_test<-read.table(file = "./test/X_test.txt",header = T)
colnames(x_test)<-name_cols[,2]

y_test<-read.table(file = "./test/y_test.txt",header = T,col.names = "y_test" )


########----TEST------------------------------------------------------------


body_acc_x_test<-read.table(file = "./test/Inertial Signals/body_acc_x_test.txt",header = T)
colnames(body_acc_x_test)<-paste("body_acc_x_test_",seq(1:length(body_acc_x_test)),sep = "")

body_acc_y_test<-read.table(file = "./test/Inertial Signals/body_acc_y_test.txt",header = T)
colnames(body_acc_y_test)<-paste("body_acc_y_test_",seq(1:length(body_acc_y_test)),sep = "")

body_acc_z_test<-read.table(file = "./test/Inertial Signals/body_acc_z_test.txt",header = T)
colnames(body_acc_z_test)<-paste("body_acc_z_test_",seq(1:length(body_acc_z_test)),sep = "")

##--------------------------------------------------------------------------------

body_gyro_x_test<-read.table(file = "./test/Inertial Signals/body_gyro_x_test.txt",header = T )
colnames(body_gyro_x_test)<-paste("body_gyro_x_test_",seq(1:length(body_gyro_x_test)),sep = "")

body_gyro_y_test<-read.table(file = "./test/Inertial Signals/body_gyro_y_test.txt",header = T )
colnames(body_gyro_y_test)<-paste("body_gyro_y_train_",seq(1:length(body_gyro_y_test)),sep = "")

body_gyro_z_test<-read.table(file = "./test/Inertial Signals/body_gyro_z_test.txt",header = T )
colnames(body_gyro_z_test)<-paste("body_gyro_z_test_",seq(1:length(body_gyro_z_test)),sep = "")

#---------------------------------------------------------------------------

total_acc_x_test<-read.table(file = "./test/Inertial Signals/total_acc_x_test.txt",header = T )
colnames(total_acc_x_test)<-paste("total_acc_x_test_",seq(1:length(total_acc_x_test)),sep = "")

total_acc_y_test<-read.table(file = "./test/Inertial Signals/total_acc_y_test.txt",header = T )
colnames(total_acc_y_test)<-paste("total_acc_y_test_",seq(1:length(total_acc_y_test)),sep = "")

total_acc_z_test<-read.table(file = "./test/Inertial Signals/total_acc_z_test.txt",header = T )
colnames(total_acc_z_test)<-paste("total_acc_z_test_",seq(1:length(total_acc_z_test)),sep = "")

###-------TRAIN----------------------------------------------------------------


body_acc_x_train<-read.table(file = "./train/Inertial Signals/body_acc_x_train.txt",header = T )
colnames(body_acc_x_train)<-paste("body_acc_x_train_",seq(1:length(body_acc_x_train)),sep = "")

body_acc_y_train<-read.table(file = "./train/Inertial Signals/body_acc_y_train.txt",header = T )
colnames(body_acc_y_train)<-paste("body_acc_y_train_",seq(1:length(body_acc_y_train)),sep = "")

body_acc_z_train<-read.table(file = "./train/Inertial Signals/body_acc_z_train.txt",header = T )
colnames(body_acc_z_train)<-paste("body_acc_z_train_",seq(1:length(body_acc_z_train)),sep = "")

##-----------------------------------------------------------------

body_gyro_x_train<-read.table(file = "./train/Inertial Signals/body_gyro_x_train.txt",header = T )
colnames(body_gyro_x_train)<-paste("body_gyro_x_train_",seq(1:length(body_gyro_x_train)),sep = "")

body_gyro_y_train<-read.table(file = "./train/Inertial Signals/body_gyro_y_train.txt",header = T )
colnames(body_gyro_y_train)<-paste("body_gyro_y_train_",seq(1:length(body_gyro_y_train)),sep = "")

body_gyro_z_train<-read.table(file = "./train/Inertial Signals/body_gyro_z_train.txt",header = T )
colnames(body_gyro_z_train)<-paste("body_gyro_z_train_",seq(1:length(body_gyro_z_train)),sep = "")


#---------------------------------------------------------------------

total_acc_x_train<-read.table(file = "./train/Inertial Signals/total_acc_x_train.txt",header = T )
colnames(total_acc_x_train)<-paste("total_acc_x_train_",seq(1:length(total_acc_x_train)),sep = "")

total_acc_y_train<-read.table(file = "./train/Inertial Signals/total_acc_y_train.txt",header = T )
colnames(total_acc_y_train)<-paste("total_acc_y_train_",seq(1:length(total_acc_y_train)),sep = "")

total_acc_z_train<-read.table(file = "./train/Inertial Signals/total_acc_z_train.txt",header = T )
colnames(total_acc_z_train)<-paste("total_acc_z_train_",seq(1:length(total_acc_z_train)),sep = "")

#-----------------------------#############  MERGE  ######################--------------------------------------------

#marge subjects x, y (test vs train)
n_test<-colnames(subject_test)
colnames(subject_train)<-n_test
colnames(subject_train)
colnames(subject_test)
s1<-rbind(subject_train,subject_test)

#data.table(subject_test,subject_train)

#n_test<-colnames(subject_test)
#colnames(subject_train)<-n_test
#rbind(subject_train,subject_test)

#s2<-data.frame(x_test,x_train)
s2<-rbind(x_test,x_train)

#s3<-data.frame(y_test,y_train)
n_test<-colnames(y_test)
colnames(y_train)<-n_test
s3<-rbind(y_test,y_train)

#merge body_acc x,y,z (test vs train) 
n_test<-colnames(body_acc_x_test)
colnames(body_acc_x_train)<-n_test
s4<-rbind(body_acc_x_train,body_acc_x_test)
#s4<-data.frame(body_acc_x_test,body_acc_x_train)

n_test<-colnames(body_acc_y_test)
colnames(body_acc_y_train)<-n_test
s5<-rbind(body_acc_y_test,body_acc_y_train)

n_test<-colnames(body_acc_z_test)
colnames(body_acc_z_train)<-n_test
s6<-rbind(body_acc_z_test,body_acc_z_train)


#merge body_gyro x,y,z (test vs train)
n_test<-colnames(body_gyro_x_test)
colnames(body_gyro_x_train)<-n_test
s7<-rbind(body_gyro_x_train,body_gyro_x_test)

n_test<-colnames(body_gyro_y_test)
colnames(body_gyro_y_train)<-n_test
s8<-rbind(body_gyro_y_train,body_gyro_y_test)

n_test<-colnames(body_gyro_z_test)
colnames(body_gyro_z_train)<-n_test
s9<-rbind(body_gyro_z_train,body_gyro_z_test)


#merge total_acc x,y,z (test vs train) 

n_test<-colnames(total_acc_x_test)
colnames(total_acc_x_train)<-n_test
s10<-rbind(total_acc_x_train,total_acc_x_test)

n_test<-colnames(total_acc_y_test)
colnames(total_acc_y_train)<-n_test
s11<-rbind(total_acc_y_train,total_acc_y_test)

n_test<-colnames(total_acc_z_test)
colnames(total_acc_z_train)<-n_test
s12<-rbind(total_acc_z_train,total_acc_z_test)


#s6<-data.frame(total_acc_x_test,total_acc_x_train,total_acc_y_test,total_acc_y_train,total_acc_z_test,total_acc_z_train)


####----------------------------FINAL DATASET -------------------------------------------------


#Dataset with names from the source
dataset_coursera<-data.frame(s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12)
#View(dataset_coursera)



#Dataset with colnames from features.txt
dataset_coursera2<-data.frame(s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12)


###--------------------------------------measurements

n<-grep(pattern = "*mean",x = colnames(dataset_coursera2))
measurements_mean<-dataset_coursera2[,n]

n<-grep(pattern = "*std",x = colnames(dataset_coursera2))
measurements_std<-dataset_coursera2[,n]

##---------------------------------------Final Dataset 
#View(dataset_coursera2)
write.table(x = dataset_coursera2,file = "./final.txt",row.names = FALSE)
