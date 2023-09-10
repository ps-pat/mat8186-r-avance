################
## Exercice 1 ##
################

## Le code est le même pour les deux méthodes; il n'y a que la fonction de
## test qui change.
tester <- function(Fun, x, ...) {
    ## Extrait les temps d'exécution et les convertit en `numeric`.
    dat <- lapply(x[["time"]], as.numeric)

    ## Exécute les tests. On utilise `...` afin de permettre à l'utilisateur
    ## de contrôler les paramètres du test (`conf.level` par exemple).
    ret <- combn(dat, 2, simplify = FALSE,
                 \(p, ...) Fun(p[[1]], p[[2]], ...), ...)

    ## Un peu de métaprogrammation pour rendre la sortie plus agréable ;)
    test_groups_names <-
        combn(obj[["expression"]], 2, simplify = FALSE, \(expr) {
            variables_names <- as.list(as.character(expr))
            do.call(paste, c(variables_names, sep = " and "))
        })

    for (k in seq_along(test_groups_names))
        ret[[k]][["data.name"]] <- test_groups_names[[k]]

    ret
}

## On implémente facilement les méthodes demandées en spécialisant `tester`.
t.test.bench_mark <- function(x, ...)
    tester(t.test, x, ...)

wilcox.test.bench_mark <- function(x, ...)
    tester(wilcox.test, x, ...)

################
## Exercice 2 ##
################

## a)

knapsack <- function(v, w, V, W) {
    n <- length(v)

    ## Important car les entiers sont encodés sur 32 bits en R. On
    ## pourrait modifier le code afin de le rendre plus général, mais
    ## le temps d'exécution pour n >= 32 est prohibitif de toute
    ## manière.
    stopifnot(n < 32L)

    ## Nombre de sacs à dos respectant les conditions données.
    counter <- 0L

    ## On utilise la représentation binaire des entiers de 0 à 2^n - 1 afin
    ## de générer l'ensemble puissance.
    k <- 0L
    while (k < 2L^n) {
        ## Génère le sac à dos.
        sac <- as.logical(intToBits(k))[1:n]
        k <- k + 1L

        ## Vérifie que les conditions sont respectées.
        (sum(v[sac]) < V || sum(w[sac]) > W) && next

        ## Si oui, on incrémente le compteur.
        counter <- counter + 1L
    }

    counter / 2^n
}

## b)

## La ligne
##     (sum(v[sac]) < V || sum(w[sac]) > W) && next
## est la plus gourmande en mémoire et en temps. Elle est suivie de près par
##     sac <- as.logical(intToBits(k))[1:n]
## Cela provient probablement que ces lignes combinent plusieurs opérations.
## Pour des vecteurs `v` et `w` de taille 27, leur temps d'exécution totalise
## 52% et 44% du temps total d'exécution et 34% et 28% de l'utilisation mémoire
## respectivement.

## c)
bench::mark(knapsack(v, w, 50L, 100L),
            iterations = 100L,
            env = list2env(list(v = sample(1:20, 5L, replace = TRUE),
                                w = sample(1:20, 5L, replace = TRUE)))) |>
    ggplot2::autoplot()
