#' CDF for a mixture of two normal distributions
#'
#' @param x Value at which to evaluate the CDF
#' @param mean1 Mean of the first normal distribution
#' @param sd1 Standard deviation of the first normal distribution
#' @param mean2 Mean of the second normal distribution
#' @param sd2 Standard deviation of the second normal distribution
#' @param mixprop Mixture probability
#'
#' @return Values of the CDF for the mixture of the two normal distributions.
#' The function is vectorized on all its parameters.
#' @export 
#'
#' @examples
#' pmix(1:3,1:3,1:3,11:13,1:3,(1:3)/4)
pmix = function(x,mean1,sd1,mean2,sd2,mixprop){
  
  mixprop*pnorm(x,mean1,sd1)+(1-mixprop)*pnorm(x,mean2,sd2)
  
}