#R code

source("/Users/lizzy/Principle.Component.Pursuit/Original/R Code/soft_thresholding.R")

singular_value_threshold <- function(M, lambda) {
  
  USV <- svd(M)
  U <- USV$u
  S <- USV$d
  V <- USV$v
    
  N <- U %*% diag(soft_thresholding_diag(S, lambda)) %*% t(V)
  
  v  <- sum(soft_thresholding_diag(S, lambda))
  
  svt <- list(N = N, v = v) 
  svt
}
