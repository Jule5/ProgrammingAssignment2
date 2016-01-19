## These functions will calculate and cache the inverse of a given matrix.


## This function will create a matrix to cache the inverse.

makeCacheMatrix <- function(x = matrix()) {
                    inv <- NULL
                            set <- function(y){
                            x <<- y
                            inv <<- NULL
                                              }
                    get <- function() x
                    setinv <- function(inverse) inv <<- inverse
                    getinv <- function() inv
                    list(set = set, get = get, setinv = setinv, getinv = getinv)

}


## This function first checks if the inverse a a matrix has been calculated before
## if not will calcaulate the inverse and cached it.

cacheSolve <- function(x, ...) {
                    inv <- x$getinv()
                    if (!is.null(inv)){
                                message("Getting cache data.")
                                return(inv)
                                        }
                    mat.data <- x$get()
                    inv <- solve(mat.data, ...)
                    x$setinv(inv)
                    return(inv)
                    
  
  ## Return a matrix that is the inverse of 'x'
}

## This is a test for the functios
## a <- makeCacheMatrix()
## a$set(matrix(1:4, 2, 2))
## cacheSolve(a)
## [,1] [,2]
## [1,]   -2  1.5
## [2,]    1 -0.5
## cacheSolve(a)
## Getting cache data.
## [,1] [,2]
## [1,]   -2  1.5
## [2,]    1 -0.5