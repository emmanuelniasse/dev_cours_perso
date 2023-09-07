# Rechercher un fichier dans la machine

---

`> mkdir mes_dossiers`
`> cd mes_dossiers`

-   Créer plusieurs dossiers l'un dans l'autre en une fois
    `> mkdir -p A/B/C`

    -   Créer un fichier `text.txt` pour chaque dossier
        `> touch {A,A/B,A/B/C}/text.txt`

---

-   find

    -   Lister ce qu'il y a dans tous les dossiers
        `find .`

    -   Lister ce qu'il y a dans mon dossier `A`
        `> find A`

    -   Lister ce qu'il y a dans les 2 premiers dossiers
        `> find / -maxdepth 3`

    -   Lister les fichiers / dossiers du premier niveau du répertoire courant
        `> find . -maxdepth 1 -type d`
        type d = directory (dossier)
        type f = file (fichier)

    -   Lister tous les fichier avec comme nom `test`(peu importe l'extension) dans tous les dossier à partir du répertoire courant
        `find . -type f -name test*`

    -   Trier par ordre alphabétique
        `> sort`

    -   Trier par ordre croisant
        `> sort -n`

    -   Trier par ordre et ne pas liste les doublons
        `> sort -nu` (le flag `-u` signifie `unique`)

-   grep

    -   Recherche les occurences d'un mot `random` dans un fichier
        `> grep random fichier.txt`

    -   Eviter les erreur de casse
        `> grep -i rAndoM fichier.txt`

    -   Indiquer la ligne de chaque occurence
        `> grep -in random fichier.txt`

    -   Compter les occurences de la lettre `a` dans un fichier
        `> grep a fichier.txt -c`

    -   Rechercher les fichier / dossiers avec comme nom `manu`
        `> ls | grep manu`

-   cut

    -   Retourne uniquement le premier caractère de chaque ligne
        `> cut -c 1 fichier.txt`

    -   Retourne les 3 premiers caractèes de chaque ligne
        `> cut -c 1-3 fichier.txt`

    -   Retourne les caractères 1 et 3 de chaque ligne
        `> cut -c 1,3 fichier.txt`

    -   Retourne la chaîne de caractère se trouvant avant la ',' (-d comme delimiter et -f comme field, voir `man cut`)
        `> cut -d "," -f 2 fichier.txt`
