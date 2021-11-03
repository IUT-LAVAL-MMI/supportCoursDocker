#!/bin/sh
#dans le conteneur symfony cette commande fonctionne
#kill -USR2 1
#mais de l'extérieur cela ne marche pas
#./dcTool dev exec symfony /bin/bash -c kill -USR2 1
#./dcTool dev exec symfony /bin/bash -c kill -s USR2 1
#docker exec -it webapp1-dev_symfony_1 /bin/bash -c kill -USR2 1