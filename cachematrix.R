## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#this creates a function which returns a list of functions to do the below
# 1. Set the value of a matrix
# 2. Get the value of a matrix
# 3. Set the value of inverse of a matrix
# 4. Get the value of inverse of a matrix
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
