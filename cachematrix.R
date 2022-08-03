## Put comments here that give an overall description of what your
## functions do

## this function stores the matrix and its inverse, if exists, and gets the matrix and its inverse when needed

makeCacheMatrix <- function(x = matrix()) {
       m <- NULL
       set <- function(y) {
        x <<- y
        m <<- NULL
      }
      get <- function() x
      setmean <- function(inverse) m <<- inverse
      getmean <- function() m
      list(set = set, get = get,
           setinverse = setinverse,
           getinverse = getinverse)
    
}
    
    
    ## this function retrive the inverse of a function when exist or calculate it when it does not exists

cacheSolve <- function(x, ...) {
      m <- x$getinverse()
      if(!is.null(m)) {
        message("getting cached inverse")
        return(m)
      }
      data <- x$get()
      m <- solve(data, ...)
      setinverse(m)
      m
            ## Return a matrix that is the inverse of 'x'
}

