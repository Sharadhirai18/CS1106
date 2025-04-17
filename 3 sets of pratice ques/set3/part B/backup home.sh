# Creating a timestamped directory in /backups
echo "Creating a timestamped directory..."
mkdir -p /backups/$(date + %Y%m%d_%H%M%S)

# Copying /home to it
echo "Copying Home directory to it..."
cp -r /home /backups/$(date + %Y%m%d_%H%M%S)

# Compressing the backup
echo "Compressing the backup..."
tar -czf /backups/backup_$(date + %Y%m%d_%H%M%S).tar.gz /backups/$(date + %Y%m%d_%H%M%S)

# Verifying the backup integrity
if gzip -t /backups/backup_$(date + %Y%m%d_%H%M%S).tar.gz; then
	echo "Backup Integrity verified."
else:
	echo "Backup Integrity check failed."
fi
