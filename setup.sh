# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install Git
brew install git

# Install SDKMAN
curl -s get.sdkman.io | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# Install JDK
sdk install java

# Install wget
brew install wget

# Install python (comes with Setuptools and pip)
brew install python

# Install n to get Node
brew install n

# Install Node Stable Version
sudo n stable
sudo chown -R $USER /usr/local/lib/node_modules

# Install Firacode Font
brew tap homebrew/cask-fonts
brew cask install font-fira-code

# Install Visual Studio Code
brew cask install visual-studio-code

# Install atom
brew cask install atom

# Install Insomnia
brew cask install insomnia

# Install GitHub Desktop
brew cask install github

# Install Chrome Beta
brew tap homebrew/cask-versions
brew cask install google-chrome-beta

# Install IINA (VLC is outdated)
brew cask install iina

# Install The Unarchiver
brew cask install the-unarchiver

# Install Transmission
brew cask install transmission

# Install Vanilla
brew cask install vanilla

# Install Cakebrew
brew cask install cakebrew

# Install Hyper Terminal
brew cask install hyper

# Download Hyper Settings
wget https://gist.githubusercontent.com/zackwag/8a589bee3655355afd446d564f5a2639/raw/06a3fa995d2fce1eba8357a156faaee243a5b03a/.hyper.js

# Download Visual Studio Code Settings
wget -P ~/Library/Application\ Support/Code/User/ https://gist.githubusercontent.com/zackwag/5b8129ac0aff4d8a98c7e2e794038ae7/raw/f7d97666b68ad10dc8f2776945c58322308e86da/settings.json

# Create Empty SSH Known Hosts File
sudo mkdir ~/.ssh/
sudo touch ~/.ssh/known_hosts

# Setup Environment
git clone https://github.com/zackwag/profile.git .profile.d
ln -s .profile.d/init .profile
wget https://raw.githubusercontent.com/zackwag/setup/master/.bash_profile
