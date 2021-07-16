## Below are a pair of functions that cache the inverse of matrix for Coursera Data Science: R Progrraming assignment week 3
## github - hedinov
## coursera - Hedi Novianto
## Friday, July 16th 2021

## Below is a function that creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function (x = matrix()) {
  inv <- NULL
  set <- function (y) {
    x <<- y
    inv <<- NULL
  }
  get <- function () x
  setinverse <- function (inverse) inv <<- inverse
  getinverse <- function () inv
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Below is a function that computes the inverse of the special "matrix" returned by makeCacheMatrix above

cacheSolve <- function (x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message ("getting cached data")
    return (inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setinverse(inv)
  inv
}