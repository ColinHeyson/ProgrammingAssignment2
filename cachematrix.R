## Purpose: This pair of functions sets prepares a function to be solved
## and cached in memory, and then does so once called

## Here we create a list which stores the value and eventually the inverse
## of our matrix once cached

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    get <- function () x
    inverse.matrix <- function(solve) m <<- solve
    get.inverse <- function() m
    list(get = get,
         inverse.matrix = inverse.matrix,
         get.inverse = get.inverse
         )
}


## Here we preform the inverse calcuation and store in memory.
## If the inverse already exists in the cache, just return it.

cacheSolve <- function(x, ...) {
    ## Returns a matrix that is the inverse of 'x'
    m <- x$get.inverse()
    if (is.null(m)) {
        data <- x$get()
        m <- solve(data, ...)
        x$inverse.matrix(m)
        return(m)
    }
    message('that cached data yall')
    m
}
