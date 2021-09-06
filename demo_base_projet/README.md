# Structure de projet Symfony - React sur Docker

---

*Auteur : Rémi Venant, <[remi.venant@univ-lemans.fr](mailto://remi.venant@univ-lemans.fr)>*  
*Version : 1.0*

---

Ce projet dépot une strcture de base pour des projets de développement d'application web reponsant sur Symfony coté *backend* et React/MobX coté *frontend*, et reposant sur des bases de données SQL et NoSQL orientées Document.

Ce dépôt propose :
- la structuration de l'arborescence de fichiers ;
- des piles de conteneurs Docker pour fournir les environnements de développement et de pré-production/production ;
- la structure et l'ensemble des fichiers de configuration nécessaires à l'exploitation des piles Docker
- une documentation
- un outil (script shell) pour simplifier la manipulation des piles Docker
- une application de démonstration exploitant l'ensemble des composants.

4 branches principales sont proposées dans ce dépôt :
- **base** : contient la structure de base de la pile docker. Les applications *backend* et *frontend* ne sont pas initialisées.
- **master** : à partir de **base**, contient en plus la structure initialisée des applications **backend** et **frontent**, avec pour Symfony le squelette "minimal" et avec la plupart des dépendances de base dont vous aurez besoin (ex.: packages symfony et doctrine pour le *backend*, ou react pour le *frontend*). *Cette branche est celle conseillée pour commencer votre projet*.
- **demo** : à partir **master**, contient en plus une application de démonstration.
- **symfony-website** : à partir de **base**, contient en plus la structure initialisée des applications **backend** et **frontent**, avec pour Symfony le squelette "website" et aet avec la plupart des dépendances de base dont vous aurez besoin (ex.: packages symfony et doctrine pour le *backend*, ou react pour le *frontend*). *Cette branche est aussi conseillée pour commencer votre projet*.

## Documentation

La documentation est consultable ici : [doc/documentation_fr.pdf](./doc/documentation_fr.pdf)

## Tester rapidement l'application de démo

- vérifier que Docker soit bien installé et lancé sur votre machine
- vérifier que vous ayez les droits de manipuler docker (ex.: `docker ps`)
- vérifier qu'aucun programme sur votre machine ne soit déjà à l'écoute du port 80
- Clonez le dépôt (`git clone ...`)
- positionnez-vous dans le dossier du dépôt (`cd ...`)
- Rapatriez la branche "démo" du dépôt (`git checkout origin/demo`)
- Lancez l'application de démo en mode production (`./dcTool prod up`)
- attendez que l'ensemble des conteneurs soient correctement lancés. Normalement, lorsque l'application sera prête, la commande `./dcTool prod ps` devrez vous indiquer que les conteneurs http, mongodb, mysqldb, symfony sont lancés (*Up*) et que le conteneur npm a terminé avec un code de sortie 0 (*Exit 0*). Le premier lancement est généralement long (rapatriement des images, construction de l'image symfony, installation des dépendances des application *backend* et *frontend*, build de l'application *frontend*)
- Une fois l'ensemble des conteneurs lancés, vous devriez pouvoir tester l'application depuis votre navigateur à l'adresse [http://localhost:80](http://localhost:80)
