#!/bin/sh
#à mettre à jour
./dcTool dev exec mongodb mongoexport --db=kB --collection=kboards --out=/tmp/initialKaizenBoardData.json --jsonArray
./dcTool dev cp mongodb:/tmp/initialKaizenBoardData.json ./data/initialKaizenBoardData.json