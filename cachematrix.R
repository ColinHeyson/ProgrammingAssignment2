## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
#     set <- function (y) {
#         x <<- y
#         m <<- NULL(
#     }
    get <- function () x
    inverse.matrix <- function(solve) m <<- solve
    get.inverse <- function() m
    list(#set = set,
         get = get,
         inverse.matrix = inverse.matrix,
         get.inverse = get.inverse
         )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$get.inverse()
    if (is.null(m)) {
#         fun <- x$inverse.matrix()
        data <- x$get()
        m <- solve(data, ...)
        x$inverse.matrix(m)
        return(m)
    }
    message('that cached data yall')
    m
}
