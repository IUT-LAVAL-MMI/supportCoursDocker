#!/bin/bash

#on sauvegarde l'ancienne version de l'export si elle existe
if [ -f ../databasesInit/mysql/prod/lpdiwa.sql ]; then
    cp ../databasesInit/mysql/prod/lpdiwa.sql ../databasesInit/mysql/prod/lpdiwa_bkup.sql
fi
#on procède à l'export de la base de données sql et on le place directement dans le bon dossier
./dcTool dev exec mysqldb mysqldump lpdiwa --user lpdiwa --password=jeZ53jzj34d > ../databasesInit/mysql/prod/lpdiwa.sql