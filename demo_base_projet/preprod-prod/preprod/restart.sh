#!/bin/bash

echo "************"
echo "Étape 1: Lancement des conteneurs en mode prod et détaché"
echo "************"

cd /home/lpdiwa/preprod/
if [ -d ./2122-LPDIWA-PROJET-G1 ]; then
  cd ./2122-LPDIWA-PROJET-G1
  ./dcTool prod -lmp up -d
  
  echo "************"
  echo "Étape 2: Mise en production"
  echo "************"

  echo "Testez l'url http://preprod.g1-lpdiwa.edu. Il faut attendre au moins 1 minute 30. Si cela ne fonctionne toujours pas analysez les logs des conteneurs."
else
  echo "Dossier inexistant, il faut lancer le script deploy.sh"
fi


#echo "On attend 15 secondes. Et maximum 1m30"
#sleep 15

#compteur=0
#while [ $compteur -le 6 ]; do
#    http_response=$(curl -s -o response.txt -w "%{http_code}" http://site.preprod.g2-lpdiwa.edu/sql)
#    if [ $http_response != "200" ]; then
#        if [ $compteur -lt 6 ]; then
#          echo "L'application web n'est pas encore disponible. On attend encore 15 secondes."
#          let "compteur=$compteur+1"
#          sleep 15
#        else
#          echo "On a attendu suffisamment. Soit il faut attendre encore plus longtemps. Soit il y a eu un problème."
#        fi
#    else
#        echo "L'application web est disponible. Rendez-vous sur http://site.preprod.g2-lpdiwa.edu."
#        compteur=10
#    fi
#done