#!/bin/bash

BACKUP_DIR="/root/docker-backup/$(date +%F_%H-%M-%S)"

mkdir -p "$BACKUP_DIR"

echo "======================================="
echo "Starting Docker Backup..."
echo "Backup Location: $BACKUP_DIR"
echo "======================================="

echo "[1/4] Backing up application files..."
tar -czpf "$BACKUP_DIR/php-login-app-files.tar.gz" /root/php-login-app

echo "[2/4] Backing up Docker images..."
docker save -o "$BACKUP_DIR/docker-images.tar" \
php-login-app-php:latest \
nginx:latest \
mysql:8

echo "[3/4] Backing up MySQL database..."
docker exec mysqlserver \
mysqldump \
--no-tablespaces \
-u testuser \
-pTest@123 \
testdb \
> "$BACKUP_DIR/testdb.sql"

echo "[4/4] Saving container configuration..."
docker inspect php-app > "$BACKUP_DIR/php-app.json"
docker inspect nginx-web > "$BACKUP_DIR/nginx-web.json"
docker inspect mysqlserver > "$BACKUP_DIR/mysqlserver.json"

echo "======================================="
echo "Backup Completed Successfully"
echo "Location : $BACKUP_DIR"
echo "======================================="
