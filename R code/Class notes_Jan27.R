#1/27

y<-x[!is.na(x)] #returns vector with only true values of x (NAs not counted)
y<-x[!is.na(x)] = 0 #will replace missing values of x with 0
#EXAMPLE
x<-c(1,2,NA,0,-7)
z=x[!is.na(x) & x>0]

x # [1] 1,2,NA,0,-7
z #[1] 1,2

#below code taken from assigningvalues.R document

rm(list=ls())
x <- c(1, 1, 3, 4, 5, 7)
x
y <- c(x[2], x[5], x[3], x[3], x[12])
y

z1 = x[1:3]
z1

z2 = x[-(1:3)]
z2

#matrices and arrays (array is multi-dimensional vector; 
                        #matrix is two-dimensional array)
#Factors: a compact way to handle character data 
#Lists: a general form of a vecot in which the elements don't 
                    #need to be of the same type, may themselves be lists
#Data frames: matrix-like structures in which the columns can be of different types
                #most packages assume data will be in a data frame



#Array=multiply subscripted collection of data entries
        #dimension vector is vector of non-neg integers. If length=k,
            #vector has k dimensions
#Matrix=two-dimensional array
matrix(data_vector, nrow = , ncol = ) #used to specify a matrix format for a vector
z = matrix(h, nrow=5, ncol=2) #will create (5x2) matrix z

#below code taken from matrix.R file
rm(list=ls())
h = c(1,3,5,7,9,12,14,16,18,20)
h
z = matrix(h,nrow=5,ncol=2)
z
w = matrix(h,nrow=6,ncol=3)
w
v = matrix(z,20,2)
v



#Lists
Empl = list (employee="Anna", spouse = "Fred",
             children = 3, child.ages=c(4,7,9))
#name$component_name more convenient
#names$child.ages[3] refers to third element in child ages 
                                #(without bracket would refer to all)

#combine function c can combine lists or add new components to list

#below code is taken from Examples+of+List.R file
rm(list=ls())

Empl <- list( employee=c("Anna", "Bob", "Sarah"),spouse=c("Fred", "Anna", "John"), 
              children=c(3,2,0), child.ages = c( list(c(4,7,9)), list(c(5,8)), list(NA) ) )

Empl

Empl = c(Empl, list(service=c(8,10,7))) #adds new component to existing list

Empl


#Data Frames
#used to store a data matrix
#should be thought of as a list of variables of same length, 
                                     #but possibly different types

#below code is take from read+data+using+read_table.R file
rm(list=ls())

# specify a vector of names 

names = c("NO2_conc","cars","temp","wind","temp_diff","wind_dir","hour","day")

no2_1 <- read.table("NO2.dat",header=FALSE,col.names=names,row.names=NULL) 

city <- rep("Oslo",500)  # Note the use of the rep command

no2_2 <- data.frame(no2_1, city)
no2_2[1:10,]

#(I do not have the NO2 data so this code will not run, 
                                # but good for example purposes)

