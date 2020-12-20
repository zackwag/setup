# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install Git
brew install git

# Install JDK
brew install --cask adoptopenjdk 
brew tap adoptopenjdk/openjdk
brew install --cask adoptopenjdk11

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
brew install --cask font-fira-code

# Install Visual Studio Code
brew install --cask visual-studio-code

# Install atom
brew install --cask atom

# Install Insomnia
brew install --cask insomnia

# Install GitHub Desktop
brew install --cask github

# Install Chrome Beta
brew tap homebrew/cask-versions
brew install --cask google-chrome-beta

# Install IINA (VLC is outdated)
brew install --cask iina

# Install The Unarchiver
brew install --cask the-unarchiver

# Install Vanilla
brew install --cask vanilla

# Install Cakebrew
brew install --cask cakebrew

# Install Hyper Terminal
brew install --cask hyper

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
