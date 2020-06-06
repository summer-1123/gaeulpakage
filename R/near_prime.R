#' 'Find the Nearest Pirme Number'
#'
#' this function finds the nearest prime number in a given number. If the number of prime exists at the same distance, print both values.
#'
#' @examples
#'
#' near_prime(10)
near_prime <- function(n) {
  if (n > 2) {
    for (i in 2:n) {
      d<-0
      for (j in 2:(i-1)){
        if (i %% j == 0){
          d <- d+1
        }}
      if (d==0) {
        prime <- i
      }}

    if ((n-prime) > 0){
      for (k in 1:(n-prime)) {
        d<-0
        for (j in 2:(n+k-1)){
          if ( (n+k) %% j == 0){
            d <- d+1
          }
        }
        if (d==0) {
          if (k==(n-prime)){
            prime <- c(prime,n+k)}
          else {prime <- n+k
          }
          break
        }}}
    print(prime)
  }
  else if (n==2) {
    print(n)
  }
  else
  {
    print("Please enter a number greater than 2")
  }
}



