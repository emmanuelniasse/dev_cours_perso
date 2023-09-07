# La manipulation des fichiers

-   Créer plusieurs fichiers d'un coup
    `> touch fichier{1,2,3}.txt`
    ou
    `> touch {1..5}` (crée des fichiers avec comme noms 1 à 5)

-   Créer plusieurs dossiers l'un dans l'autre en une fois
    `> mkdir -p A/B/C`

    -   Créer un fichier `text.txt` pour chaque dossier
        `> touch {A,A/B,A/B/C}/text.txt`

    -   Créer 10 fichiers text pour chaque dossier
        `> touch {A,A/B,A/B/C}/fichier-{1..10}.txt`

-   Supprimer un dossier
    `> rm -r nom_du_dossier`

-   Copier un fichier
    `> cp nom_du_fichier copie_nom_du_fichier`

-   Copier un dossier
    `> cp -r nom_du_dossier copie_nom_du_dossier`

-   Renommer un fichier / dossier
    `> mv nom_du_fichier nouveau_nom_fichier`

-   Déplacer un fichier / dossier dans un dossier
    `> mv nom_du_fichier nom_dossier_existant`

-   Déplacer plusieurs fichiers / dossiers

    **Exemple :**
    Dans le dossier ./mon_dossier j'ai fichier1.txt fichier2.txt fichier3.txt
    Je veux les déplacer dans ./mon_dossier_2
    `> mv mon_dossier/* mon_dossier_2`

    Je veux déplacer le fichier1.txt et le fichier2.txt
    `> mv mon_dossier/fichier[12].txt mon_dossier_2`

    Si j'ai 100 fichiers, de fichier1.txt à fichier100.txt et que je veux déplacer les 80 premiers
    `> mv mon_dossier/fichier[1-80].txt mon_dossier_2`

    Si je veux tout déplacer SAUF les 80 permiers
    `> mv mon_dossier/fichier[!1-80].txt mon_dossier_2`
