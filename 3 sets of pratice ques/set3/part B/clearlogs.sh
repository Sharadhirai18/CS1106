# Listing all log files
echo "Listing the log files..."
ls /var/log/*.log

# Archiving them
echo "Archiving log files..."
tar -czf archive-log /var/log/*.log

# Truncating them
echo "Truncating original log files..."
find /var/log -type f -name "*.log" -exec truncate -s 0 {} \;

# Confirming Operation
echo "Archived and Truncated the log files."
