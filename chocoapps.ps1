# Install script for Kristian Alnaes

# Created 06.08.2015

ECHO Installing apps

ECHO Configure chocolatey

choco feature enable -n allowGlobalConfirmation

choco install jre8
choco install jdk8
choco install curl
choco install ruby
choco install yeoman 
choco install atom
choco install visualstudiocode
choco install virtualbox
choco install nodejs.install
choco install github 
choco install python
choco install conemu
choco install azcopy
choco install wireshark
choco install azure-cli
choco install windirstat
choco install fiddler4
choco install steam
choco install phantomjs
choco install docker
choco install jq
choco install slack
choco install emacs
choco install racket
choco install visualfsharptools


# DEVOPS


choco install filezilla 

choco install putty 



#Misc

choco install 7zip 
choco install git
choco install skype


# Browsers

choco install google-chrome-x64




choco feature disable -n allowGlobalConfirmation
