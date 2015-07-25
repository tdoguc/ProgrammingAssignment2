## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function



makeCacheMatrix <- function(x = matrix()) {
        # initialize the cachevalue as NULL
        mycache <- NULL
       
        # store the input matrix
        setMatrix <- function(newValue) 
	  {
                x <<- newValue
                # since the matrix is assigned a new value, flush the cache
                mycache <<- NULL
        }
 
        # returns the stored matrix
        getMatrix <- function() 
	  {
                x
        }
 
        # cache the given argument
        cacheInverse <- function(solve) 
	  {
                mycache <<- solve
        }
 
        # get the cached value
        getInverse <- function() 
	  {
                mycache
        }
       
        # returns a list where each element of the list is a function
        list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
