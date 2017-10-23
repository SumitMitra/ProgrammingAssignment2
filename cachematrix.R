## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This function Function makeCacheMatrix gets a matrix as an input, set the value of the matrix,
##get the value of the matrix, set the inverse Matrix and get the inverse Matrix. The matrix object
##can cache its own object. 


    makeCacheMatrix <- function(x = matrix()) { ## define the argument with default mode of "matrix"
    inv <- NULL                             ## initialize inv as NULL; will hold value of matrix inverse 
    set <- function(y) {                    ## define the set function to assign new 
        x <<- y                             ## value of matrix in parent environment
        inv <<- NULL                        ## if there is a new matrix, reset inv to NULL
    }
    get <- function() x                     ## define the get fucntion - returns value of the matrix argument
    
    setinverse <- function(inverse) inv <<- inverse  ## assigns value of inv in parent environment
    getinverse <- function() inv                     ## gets the value of inv where called
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)  ## you need this in order to refer 
                                                                                  ## to the functions with the $ operator
}




## Write a short comment describing this function

-## The function cacheSolve takes the output of the previous matrix makeCacheMatrix(matrix) as an 
 -# input and checks inverse matrix from makeCacheMatrix(matrix) has any value in it or not.
 -# In case inverse matrix from makeCacheMatrix((matrix) is empty, it gets the original matrix data from 
 -# and set the invertible  matrix by using the solve function.
 -# In case inverse matrix from makeCacheMatrix((matrix) has some value in it (always works
 -#after running the code 1st time), it returns a message  "Getting Cached Invertible Matrix" 
 -#and the cached object

cacheSolve <- function(x, ...) {
        #get the value of the invertible matrix from the makeCacheMatrix function
 -          invMatrix <- x$getInverse()
 -        if(!is.null(invMatrix)) {                       #if inverse matrix is not NULL
 -          message("Getting Cached Invertible Matrix")   #Type message: Getting Cached Invertible Matrix 
 -          return(invMatrix)                             #return the invertible matrix
 -        }
 -          
 -#if value of the invertible matrix is NULL then  
 -        MatrixData <- x$getMatrix()                     #get the original Matrix Data 
 -        invMatrix <- solve(MatrixData, ...)             #use solve function to inverse the matrix
 -        x$setInverse(invMatrix)                         #set the invertible matrix 
 -        return(invMatrix)                               #return the invertible matrix
 +        ## Return a matrix that is the inverse of 'x'
        ## Return a matrix that is the inverse of 'x'
}
