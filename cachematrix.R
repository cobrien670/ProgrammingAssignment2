## The first function creates a list of functions to set and
## get a value of a matrix and set and get that matrix's 
##inverse. The second function computes the inverse of the special
##matrix unless the inverse has already been cached

##List of functions to get and set the value of matrix and
##its invers
makeCacheMatrix <- function(x = matrix()) {
    inv<-NULL
    
    set <- function(matrix){
      x<<-matrix
      inv<<-NULL
    }
    get<- function(){ 
      x
    }
    setinv<- function(inverse){
      inv<<- inverse
    }
    getinv<- function(){
      inv
    }  
    list(set = set, get = get, setinv = setinv,
         getinv = getinv)
    
  
}


## This function calculates the inverse of the matrix
## or retrieves the value from the cache if it has already been 
## calculated
cacheSolve <- function(x, ...) {
        inv <- lis$getinv()
        if(!is.null(inv)){
            message("getting cached data")
            return(inv)
        }
        data<-lis$get()
        inv <-solve(data)
        lis$setinv(inv)
        inv

}
