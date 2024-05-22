# !/bin/bash

# Update apt and install prerequisites
sudo apt update
sudo apt install -y apt-transport-https ca-certificates gnupg curl

# Set up mirror for Microsoft .net
wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
(echo "Package: dotnet* aspnet* netstandard*";echo 'Pin: origin "packages.microsoft.com"';echo "Pin-Priority: -10";) | sudo tee /etc/apt/preferences > /dev/null

# Google cloud cli package sources
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

# Update Apt cache and install packages
sudo apt-get update
sudo apt-get install -y google-cloud-cli-gke-gcloud-auth-plugin google-cloud-cli google-cloud-cli-cbt google-cloud-cli-kubectl-oidc kubectl dotnet-sdk-8.0 dotnet-sdk-6.0

# Install nvm, npm and angular cli.
 curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
 source ~/.bashrc
 nvm install --lts
 source ~/.bashrc
 npm i -g @angular/cli
