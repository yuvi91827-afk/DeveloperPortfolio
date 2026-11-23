#!/bin/bash

# Author: Yuvraj Singh
# Purpose: Create a compressed backup of a folder

if [ -z "$1" ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

SOURCE="$1"

if [ ! -d "$SOURCE" ]; then
    echo "Error: Folder does not exist: $SOURCE"
    exit 1
fi

BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"

mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
LOG_TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

BACKUP_FILE="backup_${TIMESTAMP}.tar.gz"
BACKUP_PATH="$BACKUP_DIR/$BACKUP_FILE"

SOURCE_PATH=$(realpath "$SOURCE")
SOURCE_PARENT=$(dirname "$SOURCE_PATH")
SOURCE_NAME=$(basename "$SOURCE_PATH")

if tar -czf "$BACKUP_PATH" -C "$SOURCE_PARENT" "$SOURCE_NAME"; then

    SIZE=$(du -h "$BACKUP_PATH" | awk '{print $1}')

    echo "Backup created successfully!"
    echo "Backup filename: $BACKUP_FILE"
    echo "Backup location: $BACKUP_PATH"
    echo "Backup size: $SIZE"

    echo "$LOG_TIMESTAMP | SUCCESS | $BACKUP_FILE | Size: $SIZE" >> "$BACKUP_DIR/backup.log"

else

    echo "Error: Backup creation failed!"

    echo "$LOG_TIMESTAMP | FAILED | $BACKUP_FILE" >> "$BACKUP_DIR/backup.log"

    exit 1
fi

