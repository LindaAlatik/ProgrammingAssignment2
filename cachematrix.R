## Put comments here that give an overall description of what your
## functions do

## This function takes a matrix as input and 1) sets the value of the matrix, 
## 2) gets the value of the matrix, 3) sets the value of the inverse of the 
## matrix, and 4) gets the value of the inverse.
makeCacheMatrix <- function(x = matrix()) {
    
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinv <- function(inverse) inv <<- inverse
    getinv <- function() inv
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)    
}


## This function calculates the inverse of a matrix. It first checks to see if 
## the inverse has already been calculated. If so, it gets the inverse from the
## cache. Otherwise, it calculates the inverse and sets the value of the inverse 
## in the cache.
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    
    inv <- x$getinv()
    if (!is.null(inv)) {
        message ("getting chached inverse")
        return (m)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinv(inv)
    inv
}
