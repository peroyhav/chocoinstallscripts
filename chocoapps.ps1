# Install script for Per Øyvind, adapted from https://github.com/kristianalnaes/chocoinstallscripts

# Created 06.08.2015

ECHO Installing apps

ECHO Configure chocolatey

choco feature enable -n allowGlobalConfirmation

# Development tools

choco install visualstudiocode
choco install python
choco install azcopy
choco install wireshark
choco install fiddler4
choco install linqpad
choco install docker
choco install jq
choco install slack

# Cloud providers

choco install gcloudsdk
choco install azure-cli

# DEVOPS

choco install winscp

choco install putty 

#Sourcecontrol

choco install git
choco install gitextensions

#Misc

choco install 7zip
choco install kdiff3
choco install postman
## paint.net requires dotnet4.7.1 not sure whether it is required to be installed manually.
## installation will require reboot.
choco install dotnet4.7.1
choco install paint.net

# Browsers

choco install googlechrome

# Password managers

choco install bitwarden

choco feature disable -n allowGlobalConfirmation
