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
        message ("getting cached inverse")
        return (inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinv(inv)
    inv
}

### test <- matrix (c(5, 9, 6, 3, 7, 8, 21, 55, 6 ), 3, 3)
### out <- makeCacheMatrix(test)
### test_inv <- cacheSolve(out)
# > test_inv
# [,1]        [,2]        [,3]
# [1,]  0.74812030 -0.28195489 -0.03383459
# [2,] -0.51879699  0.18045113  0.16165414
# [3,] -0.05639098  0.04135338 -0.01503759
