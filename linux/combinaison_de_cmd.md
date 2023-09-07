# La combinaison de commandes

## L’utilisation des pip (tuyau)

Le pip sert à alimenter grâce à la sortie standard (stdout (1)) de la commande à gauche du pip, l'entrée standard (stdin (0)) de la commande de droite

Exemple, je veux compter combien de ligne me retourne la commande `ls` :

La commande wc (word count) permet de compter les mots, lignes etc selon le flag (voir man wc) ici on souhaite les lignes donc `-l`

`> ls | wc -l`

Le | alimente la seconde commande grâce à la première

## tee

Prend un nom de fichier en argument et transmet le flux à la commande suivante

`> ls | tee ls_result.txt | wc -l`

Détail :

Je liste ce que j'ai dans mon répertoire

`tee` comme en plomberie : il y aura 2 sorties ; la première va permette de rediriger le flux dans le fichier .txt et l'autre va rediriger le flux à la commande suivante

Le flux récupéré par le | va être la nouvelle entrée de la commande `> wc -l`

Pour rappel "le flux" est une suite infinie d'éléments traités séquentiellement

Lorsque dans notre commande, nous souhaitons rediriger la sortie dans un fichier alors notre flux est coupé et les commandes suivantes ne s'exécuteront pas

Pour pallier à cela, la commande `tee`, cette commande va nous permettre de rediriger la sortie vers un fichier puis de récupérer ce fichier afin d'alimenter la commande suivante

## xargs

Passe la sortie d'une commande en argument d'une autre commande ne prenant en compte uniquemement l'entrée standard comme `echo`, `rm`, `mv` et de combiner ces commandes

`> ls | tee ls.txt | wc -l | xargs echo >> echo.txt`

Ici xargs va me permettre de récupérer le resultat de `> wc -l` et de l'insérer dans le fichier echo.txt SANS mettre d'argument en entrée standard comme `> echo stdin_arg >> echo.txt`
