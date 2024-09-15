#!/bin/bash

# Quand on change de version mysql, et vu que celui est installer en local, il faut veiller a supprimer
# le dossier afin d'éviter les conflits de version mysql.
 rm -rf docker/wordpress/db &&
 rm -rf docker/wordpress/html

 docker compose down -v &&
 docker compose rm --all &&
 docker compose pull &&
 docker compose build --no-cache &&
 docker compose up -d --force-recreate &&
 echo "C'est bon...."
