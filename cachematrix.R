

 makeCacheMatrix <- function(x = matrix()) { 
      InvMat<-NULL
      set<-function(y){
           x<<-y
           InvMat<<-NULL           

      }
      get<-function() x
      setInvMat<-function(inverse_matrix) {
           InvMat<<-inverse_matrix
      }
      getInvMat<-function() InvMat
      list(set=set, get=get, getInvMat=getInvMat,
           setInvMat=setInvMat)
 } 

      

 

 ## Write a short comment describing this function 
 

 cacheSolve <- function(x) { 
           InvMat<-x$getInvMat()
           if(!is.null(InvMat)){
                message("getting cached data")
                return(InvMat)
           }
           data<-x$get()
           InvMat<-solve(data)
           x$setInvMat(InvMat)
           InvMat
  } 
