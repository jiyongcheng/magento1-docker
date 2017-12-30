#!/bin/bash

set -e

#####################################
# Update the Magento Installation
# Arguments:
#   None
# Returns:
#   None
#####################################
function updateMagento() {
	cd /var/www/html
	composer update
}

#####################################
# Fix the filesystem permissions for the magento root.
# Arguments:
#   None
# Returns:
#   None
#####################################
function fixFilesystemPermissions() {
	chmod -R go+rw $MAGENTO_ROOT
}

# Fix the www-folder permissions
chgrp -R 33 /var/www/html

echo "Installing Magento"
updateMagento

echo "Fixing filesystem permissions"
fixFilesystemPermissions

echo "Installation fininished"
exit 0
