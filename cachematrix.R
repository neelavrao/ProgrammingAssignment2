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
# The below function check if the inverse of a matrix exits in cache and returns if it exists in the cache
#if not it will compute via solve() and set its value in 
#the cache via setinverse
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		# This function assumes that the matrix is always invertible.
    inv <- x$getinverse()
    if(!is.null(inv)) {
        message("success in getting cached data.")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)
    inv
}

