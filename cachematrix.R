## Put comments here that give an overall description of what your
## functions do

## The following function makecachematrix creates a list with a function that allows
## the user to 1) set the value of the Matrix 2) Get the value of the matrix 3) Set the inverse
## of a matrix and 4) get the inverse of a mtrix

makeCacheMatrix <- function(x = matrix()) {
  
  mat <- NULL
  set <- function(y)
  {
    x <<- y
    mat <<- NULL
  }
  get <- function() x
  set_inverse <- function(inverse) mat <<- inverse
  get_inverse <- function() mat
  list(set = set, get = get, set_inverse = set_inverse, get_inverse = get_inverse)

}


# The following function calculates the inverse of the matrix set forth by the function above. It
# first checks to see if this inverse is already been calculated and stored in cache and if so 
# retrieves the value from the cache. If not it creates the inverse by computing from the function
# above

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  my_matrix <- x$getinverse()
  if(!is.null(my_mtrix)) {
    message(" Data from the Cache already calculated")
    return(my_matrix)
  }
  my_data <- x$get()
  my_matrix <- solve(my_data, ...)
  x$setinverse(my_matrix)
  my_matrix
}
