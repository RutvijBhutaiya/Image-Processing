



# install.packages("BiocManager")
# BiocManager::install("EBImage")



install.packages("tensorflow")
library(tensorflow)
install_tensorflow()

library(tensorflow)
tf$constant("Hellow Tensorflow")


library(BiocManager)


library(EBImage)

library(keras)




# Read Images Saved on PC

pics = c('p1.jpg', 'p2.jpg', 'p3.jpg', 'p4.jpg', 'p5.jpg', 'p6.jpg',
         'c1.jpg', 'c2.jpg', 'c3.jpg', 'c4.jpg', 'c5.jpg', 'c6.jpg')


mypic = list()
for (i in 1:12) {mypic[[i]] = readImage(pics[[i]])}


## Pic Summary 

print(mypic[[1]])

display(mypic[[1]])

summary(mypic[[1]])

hist(mypic[[1]])   # Higher the intencity, daker the pic

# hist(mypic[[2]])

str(mypic)

## Resize all pics with same dimantion
## Now, we have 12 pics, rather than doing 1 by 1 resze, we used for()

for (i in 1:12) {mypic[[i]] = resize(mypic[[i]], 28, 28)}

## Reshape

28*28*3

for (i in 1:12) {mypic[[i]] = array_reshape(mypic[[i]], c(28, 28,3))}

str(mypic)


## Train and TEst dataset 

## Combine data into rowbind

trainx = NULL

# First 5 -> 1 ..5 plane image in trainx and 7 .. 11 car pics image of car in trainx

for (i in 1:5) {trainx = rbind(trainx, mypic[[i]])}    # 1 to 5 plane image stores 

for (i in 7:11) {trainx = rbind(trainx, mypic[[i]])}    # 7 to 11 car images stored

str(trainx) 

testx = rbind(mypic[[6]], mypic[[12]])

# NOw assume 0 = plane and 1 = car

trainy = c(0,0,0,0,0,1,1,1,1,1)    # This is responce variable for train

testy = c(0, 1)      


# One Hot Coding

library(fastDummies)

trainlabels = dummy_cols(trainy)
trainlabels = trainlabels[, -1]


testlabels = dummy_cols(testy)
testlabels = testlabels[, -1]







  
  
  
  
  
  
  
  
  
  
  


































