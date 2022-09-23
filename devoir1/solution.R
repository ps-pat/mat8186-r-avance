################
## Exercice 1 ##
################

fun <- function(x, n) {
    pow <- 2^(0:n)
    as.numeric(crossprod(exp(-sqrt(pow)), cos(pow * x)))
}

## Graphique
curve(sapply(x, \(x) fun(x, 500)), -4, 4)
abline(v = 0, lty =  2)
abline(h = 0, lty = 2)

################
## Exercice 2 ##
################

fwdsub_naive <- function(L, b) {
    x <- numeric(length(b))
    for (k in seq_along(b)) {
        x[k] <- b[k]
        for (i in seq_len(k - 1))
            x[k] <- x[k]  - L[k, i] * x[i]
        x[k] <- x[k] / L[k, k]
    }
    x
}

fwdsub <- function(L, b) {
    for (k in seq_along(b)) {
        for (i in seq_len(k - 1))
            b[k] <- b[k] - L[k, i] * b[i]
        b[k] <- b[k] / L[k, k]
    }
    b
}

## Test
L <- matrix(sample(1:10, 10^2, replace = TRUE), 10)
L[upper.tri(L)] <- 0
b <- sample(1:10, 10, replace = TRUE)
fwdsub_naive(L, b)
fwdsub(L, b)
forwardsolve(L, b)

bm <- bench::mark(fwdsub(L, b), fwdsub_naive(L, b), forwardsolve(L, b),
                  iterations = 10000)
ggplot2::autoplot(bm, type = "violin")
