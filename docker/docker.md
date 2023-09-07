# Docker

-   ## Qu'est-ce qu'une image ?

    -   Contient tout ce dont un application a besoin pour s'exécuter :
        -   Le système d'exploitation
        -   Les bibliothèques
        -   Les dépendances
        -   Le code en lui-même

    Ces images sont crées à partir d'un fichier appelé `dockerfile` qui spécifie les instructions pour construier l'image

    Les images sont stockées dans un registre Docker (comme Docker Hub) et sont généralement partagées publiquement ou au sein d'une organisation

-   ## Qu'est-ce qu'un conteneur ?

    C'est une instance exécutable d'une image Docker. Il s'agit d'un environnement isolé qui exécute une application de manière cohérente, indépendamment de l'infrastructure sous-jacente.

    Les conteneurs Docker sont légers, démarrables rapidement et peuvent être déployés sur tous système compatible Docker (Linux, windows, maxOS ..)

    Chaque conteneur utilise l'image Docker comme base, mais peut également inclue des configuration spécifiques à l'instance, des variables d'environnement et des volumes pour stocker des données.

## Conclusion

Une image Docker est un modèle statique qui contient tous les composants nécessaires à l'exécution d'une application, tandis qu'un conteneur Docker est une instance en cours d'exécution de cette image, isolée du reste du système. Les conteneurs permettent d'exécuter des applications de manière portable et efficace.
