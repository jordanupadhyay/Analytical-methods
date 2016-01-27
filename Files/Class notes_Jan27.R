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

