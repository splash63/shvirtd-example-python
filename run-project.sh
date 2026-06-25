#!/usr/bin/env bash
set -e

REPO_URL="https://github.com/splash63/shvirtd-example-python.git"
APP_DIR="/opt/shvirtd-example-python"

sudo rm -rf "$APP_DIR"
sudo git clone "$REPO_URL" "$APP_DIR"
sudo chown -R "$USER:$USER" "$APP_DIR"

cd "$APP_DIR"

docker compose down || true
docker compose up -d --build

sudo docker ps -a
