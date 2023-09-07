# Les flux

## Utilisations des flux standards

-   Les flux standards (std = standard):
    0 : stdin
    1 : stdout
    2 : stderr

    0 Standard input représente le clavier par défaut
    1 Standard output représente l'écran par défaut
    2 Standard erreur représente aussi l'écran par défaut

    Un processus est composé de :

    -   Ouvrir un terminal et taper une commande (standard 0)
    -   La commande est envoyée au bash
    -   Le bash fait une action sur le système
    -   Et envoie un retour (standard 1)

-   Manipulation des outputs :

    Exemple : Je tape la commande ls et au lieu de vouloir le retour dans mon terminal, je souhaite enregistrer le resultat dans un fichier.txt
    `> ls 1> resultat_ls.txt`

    Retourne dans le fichier resultat_ls.txt le retour de la commande ls
    Le chiffre 1 sert à indiquer le flux sur lequel nous souhaitons agir
