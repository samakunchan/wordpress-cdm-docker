#!/bin/bash

 docker compose down -v &&
 docker compose rm --all &&
 docker compose pull &&
 docker compose build --no-cache &&
 docker compose up -d --force-recreate &&
 echo "C'est bon...."
