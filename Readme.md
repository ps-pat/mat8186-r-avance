*(Cliquez sur un badge pour accéder aux slides!)*

[![Cours 1](https://img.shields.io/badge/Cours%201-En%20ligne-green)](https://ps-pat.github.io/mat8186-cours1/)
[![Cours 2](https://img.shields.io/badge/Cours%202-En%20ligne-green)](https://ps-pat.github.io/mat8186-cours2/)
[![Cours 3](https://img.shields.io/badge/Cours%203-En%20ligne-green)](https://ps-pat.github.io/mat8186-cours3/)
[![Cours 4](https://img.shields.io/badge/Cours%204-En%20ligne-green)](https://ps-pat.github.io/mat8186-cours4/)
[![Cours 5](https://img.shields.io/badge/Cours%205-En%20ligne-green)](https://ps-pat.github.io/mat8186-cours5/)
[![Cours 6](https://img.shields.io/badge/Cours%206-En%20ligne-green)](https://ps-pat.github.io/mat8186-cours6)

# MAT8186: Techniques avancées en programmation statistiques R
## Bienvenue!
Tout d'abord, je vous souhaite la bienvenue sur le dépôt GitHub de
votre cours. Vous y trouverez:
* Slides de chacun des cours.
* Devoirs.
* Liens utiles / matériel supplémentaire.

Veuillez noter que nous n'utiliserons *pas* Moodle pour ce cours; *le dépôt contiendra donc l'ensemble du matériel nécessaire*.

J'utiliserai exclusivement le [serveur Discord](https://discord.gg/Qycqq6K5) du cours pour communiquer avec vous. Vous pouvez facilement me contacter par l'netremise de celui-ci. N'hésitez pas à l'utiliser pour communiquer entre vous.

## Informations
* [Horaire](https://etudier.uqam.ca/cours?sigle=MAT8186): de 10h00 à 12h00 et de 15h00 à 17h00
  * lundi: 9, 16, 23 et 30 septembre.
* [Emplacement](https://goo.gl/maps/qBEwa3xAaQB4keiY9): PK-S1535
  * Il s'agit d'un laboratoire d'informatique; des ordinateurs avec RStudio seront disponibles pour tous. Toutefois, je vous encourage à apporter votre propre ordinateur si possible.

## Devoirs
* [Devoir 1](https://github.com/ps-pat/mat8186-r-avance/tree/master/devoir1)
* [Devoir 2](https://github.com/ps-pat/mat8186-r-avance/tree/master/devoir2)
* Devoir 3 *(à venir)*

## Code vu en classe
[Disponible ici!](https://gist.github.com/ps-pat/6bc36a4c3b7f80c49316e094a5fdbba2)

## Hors sujet (mais pas trop)
* Une gentille introduction aux [fonctions de hashage](https://www.codecademy.com/resources/blog/what-is-hashing/).
* [Explications](https://adv-r.hadley.nz/names-values.html) sur la gestions des références en R.
  * [Détails techniques ici](https://cran.r-project.org/doc/manuals/R-exts.html#Named-objects-and-copying).
* [Fast Inverse Square Root Algorithm](https://youtu.be/p8u_k2LIZyo?feature=shared) (vidéo): un exemple classique de code optimisé!

## Références
Références principales:

* [Advanced R (Hadley Wickham)](https://adv-r.hadley.nz/)
* [R Packages (Hadley Wickham)](https://r-pkgs.org/)
* [Happy Git and GitHub for the useR (Jennifer Bryan)](https://happygitwithr.com/)
* [Writing R Extensions (R Core Team)](https://cran.r-project.org/doc/manuals/r-release/R-exts.html)
* [R FAQ (Kurt Hornik)](https://cran.r-project.org/doc/FAQ/R-FAQ.html)
* [Git Reference (Scott Chacon et contributeurs du dépôt git-scm.com)](https://git-scm.com/docs)

## Logiciels à installer
Les logiciels suivants sont nécessaires pour le cours.

* [R (>= 4.4.1)](https://mirror.rcg.sfu.ca/mirror/CRAN/)
* [Git (>= 2.46.0)](https://git-scm.com/downloads)

Si vous possédez déjà ces logiciels, profitez du début de la session pour vous assurer qu'ils sont bien à jour.

### IDE
Étant donné sa grande popularité, il existe une multitude d'environements permettant de faciliter le développement sous R. Libre à vous d'utiliser celui qui vous plaît (ou de ne pas en utiliser du tout). Personnellement, je recommande [R Studio](https://posit.co/download/rstudio-desktop), lequel sera utilisé pour les exemples durant le cours.

### Mise à jour des packages
Profitez du début de la session pour mettre à jour vos packages R. Pour ce faire, à l'intérieur d'une session R, appelez

``` R
update.packages(ask = FALSE)
```

## Comment utiliser ce dépôt
La bonne utilisation de git et, dans une moindre mesure, GitHub, fait partie intégrante du cours. Git est à la base un outil en ligne de commande possédant une quantité impressionnante de fonctionnalité. Cette section vous liste les étapes nécessaires à la bonne utilisation du dépôt pour le cours.

À la fin de cette section, vous aurez:

1. Une copie locale du dépôt qui sera en mesure de recevoir les changements que j'y apporterai;
2. Une copie en ligne de votre dépôt local à laquelle j'aurai accès.

![Schema git](readme_pictures/schema_git.svg)

### Créez votre compte GitHub
Le processus est standard, vous devriez facilement y arriver.

### Générez une clé SSH
Suivez la procédure détaillée [ici](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent), sections "Generating a new SSH key" et (optionellement) "Adding your SSH key to the ssh-agent". Afin d'associer votre nouvelle clée à votre compte github, suivez la procédure détaillée [ici](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account). Vous devez l'ajouter comme clé d'authentification (authentication) et non de signature (signing).

### Surveillez le dépôt
Cette étape n'est pas strictement nécessaire, mais je vous recommande de surveiller ce dépôt. Vous serez ainsi averti des modifications lui étant apportés. Pour ce faire,

1. Cliquez sur le bouton `Watch` au coin supérieur droit de cette page;
   un menu déroulant apparaîtra.
2. Cliquez sur `All Activity`.

![Screenshot, watch repo](readme_pictures/watch_repo.png)

### Créez un nouveau dépôt privé
Sur la page principale de votre compte, cliquez sur le bouton
«Create repository».

![Screenshot, create repo](readme_pictures/create_repo.png)

Par la suite, donnez un nom et décrivez votre nouveau dépôt. N'oubliez pas
de le rendre privé!

![Screenshot, create_repo2](readme_pictures/create_repo2.png)

### Dupliquez le dépôt
Cette étape a pour but de créer votre propre copie personnelle du
dépôt. Pour la suite du cours, *vous allez travailler exclusivement dans
cette copie*.

1. Clonez mon dépôt:
```bash
git clone --origin upstream git@github.com:ps-pat/mat8186-r-avance.git
cd mat8186-r-avance
```
2. Ajoutez votre dépôt GitHub comme remote:
```bash
git remote add origin git@github.com:<nom d'utilisateur>/<nom du dépôt>.git
```
<nom d'utilisateur> est votre nom d'utilisateur sur Github. <nom du dépôt> est le nom que vous avez donné à votre dépôt à l'étape précédente.

3. Poussez vers votre dépôt:
```bash
git push --set-upstream origin master
```

Une fois cela fait, donnez-moi accès à votre dépôt en m'ajoutant comme
collaborateur.

1. Cliquez sur le bouton `Settings` au coin supérieur droit de la page
de *votre dépôt*.

![Screenshot, settings](readme_pictures/private_settings.png)

2. À gauche, cliquez sur `Collaborators` dans le sous-menu `Access`

![Screenshot, collaborators](readme_pictures/private_collaborator.png)

3. Cherchez mon nom d'utilisateur (ps-pat) et ajoutez-moi comme collaborateur.

![Screenshot, settings](readme_pictures/private_addCollaborator.png)

### Créez un projet RStudio
L'intégration de votre code avec RStudio comporte de nombreux
avantages. Entre autres, cela permet de profiter le l'interface
graphique de RStudio pour faire la majorité des opérations relatives
au contrôle de version (git). La marche à suivre est la suivante:

1. Dans la barre de menu, cliquez sur `File` puis `New Project...`.

![Screenshot, new project](readme_pictures/rstudio_newproject.png)

2. Dans la fenêtre qui s'ouvre, choisissez `Existing Directory`.

![Screenshot, new project2](readme_pictures/rstudio_newproject2.png)

3. Ensuite, choisissez le répertoire du dépôt que vous avez cloné dans
   les étapes précédentes.

![Screenshot, new project3](readme_pictures/rstudio_newproject3.png)

### Triangular workflow
Retournez voir le schéma du début de la section. Remarquez que vous
intégrez les changements d'un dépôt ne vous appartenant pas tandis que
vous modifiez un dépôt vous appartenant. Cette utilisation asymétrique
de Git est connue sous le nom de Triangular workflow. Sachez que si
l'envie vous prenait de contribuer à un projet libre ou open source un
jour, il s'agit généralement du workflow employé.

### Interagir avec les différents dépôts
Tout au long du cours, vous aurez besoin d'accomplir trois opérations de base:
* Pull
* Commit
* Push

Il est possible d'effectuer ces trois opérations directement à partir
de RStudio.

#### `git pull`: incorporer les changements les plus récents
La première opération à maîtriser est connue sous le nom de `git
pull`. Elle correspond à la flèche 1 sur le schéma du début de la
section. En réalité, elle accomplit deux tâches:
1. Importer les changements distants (équivaut à `git fetch`).
2. Incorporer ces changements à votre dépôt local (équivaut à `git merge`).

**Important**: *Avant de procéder à un `git pull` il est essentiel de
vous assurer que vos changements locaux ont été commis (voir section
suivante). Dans le cas contraire, vous aurez droit à un message
d'erreur de la part de git.*

Dans le cadre du cours, vous aller presque toujours vouloir intégrer les changements apportés à mon dépôt au vôtre. Pour ce faire, utilisez la commande:

```bash
git pull upstream master
```

Cette commande se comprend ainsi:
- **git**: nom du logiciel à utiliser;
- **pull**: action à réaliser;
- **upstream**: nom du dépôt distant (*remote*);
- **master** nom de la branche.

Parfois, il peut être nécessaire d'incorporer des changements apportés
à votre propre dépôt. Pour ce faire, il suffit de changer le nom du
remote dans la commande précédente:

```bash
git pull origin master
```

Notez qu'il est possible d'effectuer un `git pull` directement à
partir de RStudio. Toutefois, comme nous utilisons 2 remotes, cela
devient vite compliqué. En conséquent, je vous recommande fortement
d'effectuer vos `pull` à partir de la ligne de commande. Vous pouvez
facilement lancer un terminal à partir de RStudio:

![Screenshot, RStudio terminal](readme_pictures/rstudio_terminal.png)

#### `git commit`: commettre vos modifications locales
Cette opération est *toujours* préalable à la troisième opération,
`git push`. Conceptuellement, elle est un peu abstraite. Toutefois,
elle est relativement facile à réaliser en général.

Il n'est pas possible de soumettre directement des changements
apportés à votre dépôt local vers votre dépôt distant. La *seule*
manière de modifier le dépôt distant est de lui intégrer une sorte de
«photo» d'un changement ou d'un ensemble de changements locaux. Dans
le jargon de Git, ces photos sont appelées commits et sont générés par
la commande `git commit`. Pour faire un commit, il faut tout d'abord préciser les fichiers que l'on souhaite inclure:
```bash
git add test.R ...
```
On peut ensuite construire le commit comme tel en n'oubliant pas de l'accompagner d'un message court et pertinent:
```bash
git commit -m "Mon message court et pertinent."
```

Vous devriez être en mesure de réaliser un commit entièrement depuis
l'interface de RStudio:

1. Ouvrez la boîte de dialogue *commit*:

![Screenshot, Rstudio commit](readme_pictures/rstudio_commit.png)

2. Saisissez les informations appropriées:

![Screenshot, Rstudio commit 2](readme_pictures/rstudio_commit2.png)

#### `git push`: envoyer vos commit vers votre dépôt distant
Le `push` est l'opération qui consiste à envoyer vos commits vers
votre dépôt distant. Elle correspond à la flèche 2 dans le schéma du
début de la section. Il suffit d'entrer la commande:

```bash
git push
```

Si vous obtenez un message d'erreur, assurez-vous de pousser vers le bon remote:

```bash
git push --set-upstream origin master
```

À partir de RStudio, cette opération est élémentaire:

![Screenshot, RStudio push](readme_pictures/rstudio_push.png)

Notez que vous pouvez uniquement faire un `push` vers votre propre
dépôt ("origin"). Si vous tentez de le faire vers un dépôt pour lequel
vous ne possédez pas les permissions appropriées (par exemple
"upstream"), vous obtiendrez un message d'erreur.

## Pour en savoir plus
Git est un logiciel immensément populaire pour lequel il existe une
quantité impressionnante de documentation et tutoriels. Si vous
rencontrez un problème ou que vous souhaitez en apprendre davantage,
je vous recommande vivement les liens suivants:
* https://happygitwithr.com/
* https://git-scm.com/doc
