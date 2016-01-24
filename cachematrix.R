
##The first function, makeCacheMatrix creates a special "matirix", which is really a list containing a function to

  set the value of the matrix
  get the value of the matrix
  set the value of the InvMat
  get the value of the InvMat

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

      

 

 ## The following function calculates the InvMat of the special "matrix" created with the above function. 
 However, it first checks to see if the InvMat has already been calculated. If so, it gets the InvMat from the cache 
 and skips the computation. Otherwise, it calculates the InvMat of the data and sets the value of the InvMat in the cache 
 via the setInvMat function.
 

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
