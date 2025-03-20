#!/bin/bash

# Define variables
DOCS_DIR="$HOME/Documents"
BACKUP_DIR="$DOCS_DIR/backup"
TAR_FILE="$DOCS_DIR/backup.tar.gz"

# Step 1: Create a "backup" directory in the Documents folder
mkdir -p "$BACKUP_DIR"
echo "Backup directory created at $BACKUP_DIR"

# Step 2: Copy all .c files to the backup directory
cp "$DOCS_DIR"/*.c "$BACKUP_DIR" 2>/dev/null
echo "All .c files copied to $BACKUP_DIR"

# Step 3: Change directory to Documents
cd "$DOCS_DIR" || exit
echo "Changed directory to $DOCS_DIR"

# Step 4: Create a compressed tar archive using tar
tar -czf "$TAR_FILE" -C "$DOCS_DIR" backup
echo "Backup archived as $TAR_FILE"

# Step 5: Delete the backup directory using tar
rm -rf "$BACKUP_DIR"
echo "Backup directory deleted"

echo "Backup and restore process completed successfully!"

