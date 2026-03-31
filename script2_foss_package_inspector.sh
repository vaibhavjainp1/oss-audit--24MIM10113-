#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Vaibhav Jain | Course: Open Source Software

# --- Variable ---
PACKAGE="git"   # You can change this to any package (git, vlc, firefox, etc.)

# --- Check if package is installed (Debian/Ubuntu uses dpkg) ---
if dpkg -l | grep -qw $PACKAGE; then
    echo "======================================"
    echo " $PACKAGE is installed on this system"
    echo "======================================"

    # Show package details
    dpkg -l | grep -w $PACKAGE
    echo "--------------------------------------"
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'

else
    echo "======================================"
    echo " $PACKAGE is NOT installed on this system"
    echo "======================================"
fi

# --- Case statement: philosophy / purpose ---
echo "--------------------------------------"
echo "About the package:"

case $PACKAGE in
    git)
        echo "Git: a distributed version control system empowering open collaboration"
        ;;
    *)
        echo "Unknown package: open-source software promotes transparency and freedom"
        ;;
esac