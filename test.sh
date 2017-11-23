#!/bin/bash
docker stop lcserver
docker rm lcserver
docker rmi lcserver
git add .
git commit -m "testing"
git push
docker build -t lcserver .
docker run -d --name lcserver -p 3000:3000 lcserver