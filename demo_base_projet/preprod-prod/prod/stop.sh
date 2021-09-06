#!/bin/bash

echo "************"
echo "Étape 1: Arrêt pile Docker"
echo "************"
cd /home/lpdiwa/prod/
if [ -d ./2122-LPDIWA-PROJET-G1 ]; then
  cd ./2122-LPDIWA-PROJET-G1
  ./dcTool prod -lmp down -v
fi

echo "Pile docker de la prod arrêtée."
