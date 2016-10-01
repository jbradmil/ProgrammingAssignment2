## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  mat_inv <- NULL
  set <- function(y) { # set value of matrix
    x <<- y
    mat_inv <<- NULL
    }
  get <- function() { # get value of matrix
    x 
  }
  setinverse <- function(inverse) { # set value of inverse
    mat_inv <<- inverse 
  }
  getinverse <- function() { # get value of inverse
    mat_inv #
  }
  # list containing function
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse) 
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  mat_inv <- x$getinverse()
  if(!is.null(mat_inv)) { # already calculated
    message("getting cached data")
    return(mat_inv)
  }
  data <- x$get() # get the matrix
  mat_inv <- solve(data, ...) # solve for inverse
  x$setinverse(mat_inv) # set value of inverse for cache
  mat_inv # return it
}
