#!/bin/bash

#exécution fixture de mysql
./dcTool dev exec symfony php bin/console doctrine:migration:migrate
./dcTool dev exec symfony php bin/console doctrine:fixtures:load --append

#exécution fixture mongo
./dcTool dev exec symfony php bin/console doctrine:mongodb:fixtures:load --append