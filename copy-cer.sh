#!/bin/bash

# Docker Compose ps の出力からコンテナIDを取得
CONTAINER_ID=$(docker-compose -p $(basename "$(pwd)") ps -q)

# ローカルに証明書をコピー
docker cp $CONTAINER_ID:./smtp4dev/selfsigned-certificate.cer ./ssl/