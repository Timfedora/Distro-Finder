#!/bin/bash

# Function to detect distribution
detect_distro() {
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        case "$ID" in
            arch) echo "Arch Linux";;
            fedora) echo "Fedora";;
            rhel) echo "Red Hat Enterprise Linux";;
            centos) echo "CentOS";;
            ubuntu) echo "Ubuntu";;
            debian) echo "Debian";;
            *) echo "Unknown distribution";;
        esac
    else
        echo "Cannot determine distribution. /etc/os-release file not found."
    fi
}

# Call the function
detect_distro
