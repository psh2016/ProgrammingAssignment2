## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function( x = matrix() ) {
        invmat<-NULL
        set<- function(y){
                x<<-y
                invmat<-NULL
        }
        get<- function() x
        setinvmat <-function(inverse_matrix) {
                invmat<<-inverse_matrix
        }
        getinvmat <-function() invmat
        list(set=set , get=get , getinvmat=getinvmat,
             setinvmat=setinvmat )
}


## Write a short comment describing this function

cacheSolve <- function(x) {
        invmat <- x$getinvmat()
        if(!is.null(invmat)){
                message("getting cached data")
                return(invmat)
        }
        data<- x$get()
        invmat<- solve(data)
        x$setinvmat( invmat )
        invmat
}
