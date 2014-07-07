## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

        i <-NULL
        
        setMatrix <-function(y)
        {
             x <<-y
             i <<-NULL
        }
        
        getMatrix <-function()
        {
                x
        }
        
        setInverMatrix <-function(inver)
        {
                i <<- inver
        }
        
        getInverMatrix <-function()
        {
                i
        }
        
        list(setMatrix = setMatrix, getMatrix = getMatrix,
             setInverMatrix = setInverMatrix, getInverMatrix = getInverMatrix)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        m <-x$getInverMatrix()
        
        if(!is.null(m))
        {
                message("getting cached data")
                return(m)
        }
        
        data <-x$getMatrix()
        m <-solve(data, ...)
        x$setInverMatrix(m)
        
        m
}
