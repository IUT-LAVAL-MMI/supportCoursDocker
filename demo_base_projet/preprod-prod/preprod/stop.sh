#!/bin/bash

echo "************"
echo "Étape 1: Arrêt pile Docker"
echo "************"

cd /home/lpdiwa/preprod/
if [ -d ./2122-LPDIWA-PROJET-G1 ]; then
  cd ./2122-LPDIWA-PROJET-G1
  ./dcTool preprod -lmp down -v
fi

echo "Pile docker de la preprod arrêtée."
