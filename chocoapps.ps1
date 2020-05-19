# Install script for Per Øyvind, adapted from https://github.com/kristianalnaes/chocoinstallscripts

# Created 06.08.2015

ECHO Installing apps

ECHO Configure chocolatey

choco feature enable -n allowGlobalConfirmation

choco install visualstudiocode
choco install python
choco install azcopy
choco install wireshark
choco install azure-cli
choco install fiddler4
choco install linqpad
choco install docker
choco install jq
choco install slack

# DEVOPS

choco install winscp

choco install putty 

#Sourcecontrol

choco install git
choco install gitextensions

#Misc

choco install 7zip 
choco install skype
choco install kdiff3
choco install postman

# Browsers

choco install googlechrome

# Password managers

choco install bitwarden


choco feature disable -n allowGlobalConfirmation
