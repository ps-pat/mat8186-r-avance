# Devoir 3
L’objectif de ce devoir est la création d’un package R. Celui-ci devra respecter les exigences suivantes:

- Chacune des fonctions doit être documentée. La documentation doit comprendre les items suivants:
  - Titre: Description en une ligne de la fonction;
  - Description: Description plus détaillée de la fonction;
  - Paramètres: Description de chacun des arguments acceptés par la fonction;
  - Retour: Description de ce qui est retourné par la fonction;
  - Exemple: Au moins un exemple d’utilisation de la fonction;
- Le package lui-même doit être documenté;
- Votre package doit être mis en ligne sur GitHub de manière à pouvoir être installé à l’aide de la fonction `devtools::install_github` ([voir exemple](https://github.com/cours-patrickFournier/exemple-package)). N’oubliez pas de rendre votre dépôt privé et de m’inviter comme collaborateur!
- Notez que chacune des fonctions disponibles doit être fonctionnelle;
- Chaque méthode doit correspondre à une fonction générique qu’il vous faudra définir au besoin;
- Vous pouvez définir des fonctions autres que celles demandées pour faciliter votre travail. Toutefois, ces fonctions ne doivent pas être exposées à l’utilisateur;
- Votre package sera testé à l’aide de la commande R CMD check. Des pénalités seront attribuées pour chaque “erreur” et chaque “avertissement” (“warning”). Assurez-vous donc de passer chacun des checks avant la date limite;

----

L'objectif de ce devoir est d'implémenter quelques outils de géométrie computationnelle. Une bonne source d'informations et d'algorithmes sur le sujet est le livre [Computational Geometry: Algorithms and Applications](https://www.cs.cmu.edu/afs/cs/academic/class/15456-s14/Handouts/BKOS.pdf). Comme pour le dernier devoir, vous pouvez implémenter toute classe, méthode ou fonction auxiliaire vous facilitant la vie.

Pour ce devoir, l'implémentation d'une classe comprend un constructeur et une méthode `print`.

## Question 1
Implémentez les classes `point`, `segment` et `droite` représentant un point, un segment de droite et une droite dans $`\mathbb Z^2`$ respectivement.

## Question 2
### (a)
Implémenter la méthode `parallele` pour `segment` et `droite`. Cette méthode prend deux segments/droites en entrée et retourne `TRUE` s'ils sont parallèles, `FALSE` autrement.

### (b)
Implémenter la méthode `intersection` pour ces deux classes. Cette méthode prend deux segments/droites en entrée et retourne leur point d'intersection. Si les objets ne s'intersectent pas, elle retourne le point `(.Machine$integer.max, .Machine$integer.max)`.

## Question 3
Implémentez la classe `polygone` représentant un polygone *simple* de $`\mathcal Z^2`$.

## Question 4
Une manière simple de vérifier si deux polygones $A$ et $B$ s'intersectent est de vérifier, pour chaque segment de $A$, s'il existe un segment de $B$ tel que l'intersection entre les deux segments est non-vide. Implémenter cet algorithme dans une méthode `intersection` pour la classe polygone. Pour augmenter la performance de votre implémentation, votre méthode doit implémenter l'algorithme en parallèle.

## Question 5
### (a)
Implémentez la méthode `enveloppe` pour la classe `point` retournant l'enveloppe convexe d'un ensemble de points. La méthode doit retourner un objet de classe `polygone`. Voir la section 1.1 de [Computational Geometry: Algorithms and Applications](https://www.cs.cmu.edu/afs/cs/academic/class/15456-s14/Handouts/BKOS.pdf). Encore une fois, votre algorithme doit être parallélisé.

### (b)
Implémentez la méthode `enveloppe` pour un ensemble de segments.

### (c)
Implémentez la méthode `enveloppe` pour un polygone.

----

## Checklist
Votre package doit exposer les symboles suivants:
- `point`
- `segment`
- `droite`
- `parallele`
- `intersection`
- `polygone`
- `enveloppe`
