#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Kartik Maheshwari

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "========================================================="

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions (field 1) and owner (field 3) using awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3}')
        # Extract human-readable size
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions & Owner: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "---------------------------------------------------------"
# Custom section for Linux Kernel directories (/boot)
KERNEL_DIR="/boot"
if [ -d "$KERNEL_DIR" ]; then
    echo "Kernel Configuration Directory Check:"
    K_PERMS=$(ls -ld "$KERNEL_DIR" | awk '{print $1, $3}')
    echo "$KERNEL_DIR => Permissions & Owner: $K_PERMS"
fi
echo "========================================================="
