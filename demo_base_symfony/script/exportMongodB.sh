#!/bin/sh

#on sauvegarde l'ancienne version de l'export si elle existe
if [ -f ../databasesInit/mongo/prod/lpdiwa.archive ]; then
    cp ../databasesInit/mongo/prod/lpdiwa.archive ../databasesInit/mongo/prod/lpdiwa_bkup.archive
fi

./dcTool dev exec -T mongodb mongodump --db=lpdiwa --archive|cat > ../databasesInit/mongo/prod/lpdiwa.archive

#./dcTool dev exec mongodb mongodump --db=lpdiwa --archive=/tmp/lpdiwa.archive --quiet
#./dcTool dev cp mongodb:/tmp/lpdiwa.archive ../databasesInit/mongo/prod/lpdiwa.archive
