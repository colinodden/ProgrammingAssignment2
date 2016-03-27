<<<<<<< HEAD
# This pair of functions, designed to work together, cache the
# inverse of a matrix so that it can be quickly retrieved without
# recomputing the matrix inversion each time.

# makeCacheMatrix hosts the functions for caching a
# matrix and returning a cached matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() {
    x
  }
  setInverse <- function(inverse) {
    inv <<- inverse
  }
  getInverse <- function() {
    inv
  }
  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## cacheSolve decides whether an inverted matrix is already in cache and,
## if not, through other calls to makeCacheMatrix it computes/stores one

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("Returning Cached:")
    return(inv)
  }
  ## else...
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv
}
=======
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() {
    x
  }
  setInverse <- function(inverse) {
    inv <<- inverse
  }
  getInverse <- function() {
    inv
  }
  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("Returning Cached:")
    return(inv)
  }
  ## else...
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv
}
>>>>>>> 194c0e0af016af762ba634dba0db31dc335c3579
