
##1. set the value of the vector
##2. get the value of the vector
##3. set the value of the mean
##4. get the value of the mean

makeVector <-function(x = numeric())
{
        m  <-NULL
        set <- function(y)
        {
                x <<-y
                m <<-NULL
        }
        
        get <-function()
        {
                x
        }
        
        setMean <- function(mean)
        {
                m <<-mean
        }
        
        getMean <-function()
        {
                m
        }
        

        list(set = set, get= get ,
        setMean = setMean, getMean = getMean )
        
          
}

## the function calculates the mean of the special
## vector, if the mean already, skips the computation

cacheMean <-function(x)
{
        
        m <- x$getMean()
        if(!is.null(m))
        {
                message("getting cached data")
                return(m)
        }
        
        data <-x$get()
        m <-mean(data)
        x$setMean(m)
        
        m
        
}
