# Les scripts

-   Bonnes pratiques
    Ajouter le shebang dans un script, cela sert à indiquer au système quel interpréteur de script il doit utiliser pour exécuter le code contenu dans le fichier

    Pour un script bash :
    `#!/bin/bash`

    Pour un script Python :
    `#!/usr/bin/python`

-   Exécuter un script.sh
    `> ./script.sh`

    Si erreur "Permission denied"
    `> ls -la`

    Nous nous aperçevrons surement que nous avons les droit d'écriture et de lecture mais pas d'éxecution (-rw-r--r--)

-   Ajouter les droits
    `> chmod u+x script.sh`

-   Déclarer une variable
    `> mavariable=data`
