#!/bin/bash
docker compose -f ../docker/docker-compose-dev.yml -p webapp1-dev cp symfony:/var/www/site/vendor ../site/