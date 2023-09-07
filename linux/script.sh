#!/bin/bash

# Je suis un commentaire

hello=bonjour

echo $hello Emmanuel

echo tu es loggué en tant que $USER

echo tu es sur la machine $HOSTNAME

echo hello à ${#hello} caractères

echo ligne $LINENO

# Retourne la première ligne de la commande `man`
man_cmd=$(man echo | head -n 1)

echo $man_cmd

echo "Coucou, comment vas-tu ?"
read -p '[Votre réponse] : ' reponse
echo "Vous avez répondu : $reponse"