#!/usr/bin/env bash
INSTALL_BAL=${1:-"true"}
if [ "${INSTALL_BAL}" = "true" ]; then
    echo "Set to Install Ballerina... Beggining Process..."
    echo "Installing DPKG..."
    apt-get -y install dpkg
    echo "Downloading Ballerina installer... from..."
    wget -O ballerina_installer.deb https://dist.ballerina.io/downloads/swan-lake-beta2/ballerina-linux-installer-x64-swan-lake-beta2.deb
    echo "Installing Ballerina now..."
    dpkg -i ballerina_installer.deb
    echo "Removing Installer..." 
    rm ballerina_installer.deb
fi


# Add handling for auto upgrade of Ballerina and custom download of ballerina file
# UPGRADE_BAL=${2:-"true"}
# BALLERINA_INSTALL_LINK={$3:""}

# if [ "${UPGRADE_BAL}" = "true" ]; then
#     bal update
# fi
#  && rm ballerina-installer.deb
