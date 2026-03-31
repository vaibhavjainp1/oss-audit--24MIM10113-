#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Vaibhav Jain | Course: Open Source Software

# --- List of important directories ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "======================================"
echo " Directory Audit Report"
echo "======================================"

# --- Loop through directories ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions, owner, group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        
        # Get size
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

# --- Extra: Check config directory of chosen software (Git) ---
echo "--------------------------------------"
echo "Checking Git config directory:"

if [ -d "$HOME/.config/git" ]; then
    ls -ld "$HOME/.git"
else
    echo "Git config directory not found"
fi