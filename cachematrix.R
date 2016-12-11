## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## clone of the example code provided for caching
## the mean of a vector
## made changes so it caches a matrix instead
## changed variable names to something meaningful where
## I understood what those variables do
## and changed format of code, adding white space
## and curly braces
makeCacheMatrix <- function(x = matrix()) {
    inverseMatrixCache <- NULL
    
    set <- function(y) {
        x <<- y
        inverseMatrixCache <<- NULL
    }
    
    get <- function() {
        return(x)
    }
    
    setInverseMatrix <- function(inverseMatrixValue) {
        inverseMatrixCache <<- inverseMatrixValue
    }
    
    getInverseMatrix <- function() {
        return(inverseMatrixCache)
    }
    
    list(
        set = set, get = get,
        setInverseMatrix = setInverseMatrix,
        getInverseMatrix = getInverseMatrix
    )
}


## Write a short comment describing this function
## clone of the example code provided for creating
## and returning the mean of a vector
## made changes so it creates and/or returns 
## the inverse matrix instead
## changed variable names to something meaningful where
## I understood what those variables do
## and changed format of code, adding white space
## and curly braces
cacheSolve <- function(x, ...) {
    inverseMatrix <- x$getInverseMatrix()
    
    if( !is.null(inverseMatrix) ) {
        return(inverseMatrix)
    }
    
    data <- x$get()
    
    inverseMatrix <- solve(data)
    
    x$setInverseMatrix( inverseMatrix )
    
    inverseMatrix
}
