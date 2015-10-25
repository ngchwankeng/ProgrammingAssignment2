## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# create a list of functions that:
# set/pass in new matrix and store it x <<- y
# get: return what is the matrix stored which inverse is computed 
# getinserve: return the inverse of a matrix
# setinverse: perform matrix inversion and store it m <<- solve

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
	
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
	
        get <- function() {
		x
	}
	
        setinverse <- function(solved) {
		m <<- solved
	}
	
        getinverse <- function() {
		m
	}
	
        list(	set = set, 
		get = get,
		setinverse = setinverse,
		getinverse = getinverse)
}


## Write a short comment describing this function
# if inverse is cached, show cached value
# else find inverse then store (use setinverse())

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inv <- x$getinverse()
	
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
	
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(inv)
        inv
}
