## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function



makeCacheMatrix <- function(x = matrix()) 
{
        # initialize the cachevalue as NULL
        mycache <- NULL
       
        # store the input matrix
        setMatrix <- function(newValue) 
	  {
                x <<- newValue
                # mycache is flushed
                mycache <<- NULL
        }
 
        # stored matrix is returned
        getMatrix <- function() 
	  {
                x
        }
 
        # invesrse of the matrix is cached
        cacheInverse <- function(solve) 
	  {
                mycache <<- solve
        }
 
        # cached value is returned
        getInverse <- function() 
	  {
                mycache
        }
       
        # returns a list where each element of the list is a function
        list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) 
{
      ## Return a matrix that is the inverse of 'x'
      # gets the cached value
        inverseMatrix <- x$getInverse()
        # if is there a cached value, returns it
        if(!is.null(inverseMatrix)) {
                message("getting cached data")
                return(inverseMatrix)
        }
        # if not get the matrix and calculate its inverse, store in the cache
        data <- x$getMatrix()
        inverseMatrix<- solve(data)
        x$cacheInverse(inverseMatrix)
       
        # returns the inverseMatrix
        inverseMatrix
}
