# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install Git
brew install git

# Install JDK
brew cask install adoptopenjdk
brew cask install adoptopenjdk11

# Install Maven
brew install maven

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

# Install Vanilla
brew cask install vanilla

# Install Cakebrew
brew cask install cakebrew

# Install Hyper Terminal
brew cask install hyper

# Download Hyper Settings
wget -O .hyper.js https://raw.githubusercontent.com/zackwag/setup/master/hyper-settings.js

# Download Visual Studio Code Settings
wget -P ~/Library/Application\ Support/Code/User/ -O settings.json https://raw.githubusercontent.com/zackwag/setup/master/vs-code-settings.json

# Create Empty SSH Known Hosts File
sudo mkdir ~/.ssh/
sudo touch ~/.ssh/known_hosts

# Download Color Calibration for External Monitor
wget -P ~/Library/ColorSync/Profiles https://github.com/zackwag/setup/raw/master/space-rtings-icc-profile.icm

# Setup Environment
git clone https://github.com/zackwag/profile.git .profile.d
ln -s .profile.d/init .profile
wget https://raw.githubusercontent.com/zackwag/setup/master/.bash_profile
