## Catching the inverse of a matrix if it is already computed

## This function creates a matrix with attributes that can get its inverse from cache.

makeCacheMatrix <- function(x = matrix()) {
  invs <- NULL
  set <- function(y){
    x<<- y
    invs <<-NULL
  }
  get <-function() x
  setinvs <-function(inverse){
    invs <<- inverse
  }
  getinvs <- function() invs
  list(set=set,get=get,setinvs=setinvs,getinvs=getinvs)
}


## This functin calculates the inverse of the the matrix created by makeCacheMatrix.
## If the inverse already been calculated, then it will read the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invs <- x$getInverse()
  if(!is.null(invs)){
    message("getting cached data")
    return(invs)
  }
  mat<- x$get()
  invs <- solve(mat)
  x$setinvs(inv)
  inv
}
