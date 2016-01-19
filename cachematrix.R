## These functions will calculate and cache the inverse of a given matrix.


## This function will create a matrix to cache the inverse.

makeCacheMatrix <- function(x = matrix()) {
                    inv <- NULL
                            set <- function(y){
                            x <<- y
                            inv <<- NULL
                                              }
                    get <- function() x
                    set.inv <- function(inverse) inv <<- inverse
                    get.inv <- function() inv
                    list(set=set, get=get, set.inv=set.inv, get.iv=get.inv)

}


## This function first checks if the inverse a a matrix has been calculated before
## if not will calcaulate the inverse and cached it.

cacheSolve <- function(x, ...) {
                    inv <- x$get.inv()
                    if (!is.null(inv))
                                message("Getting cache data.")
                                return(inv)
                    mat.dat <- x$get()
                    inv <- solve(mat.dat, ...)
                    x$set.inv(inv)
                    return(inv)
                    
  
  ## Return a matrix that is the inverse of 'x'
}
