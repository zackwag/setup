#!/bin/bash

# Install  Homebrew. Homebrew  is the equivalent of apt-get for linux. Its required to install tools such as git and wget.
# Mac OS 10.9 will automatically prompt user to install XCode command line tools which is a pre-requisite.
which brew 
RETSTATUS=$?
if [ $RETSTATUS -ne 0 ]
then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  tput setaf 1 && tput smul
  echo Warning:
  tput sgr0
  echo Homebrew already installed.
  echo Upgrading brew casks.....
  #http://apple.stackexchange.com/questions/190072/is-there-any-way-to-upgrade-brew-caski
  # one-liner equivalent = curl -s https://gist.githubusercontent.com/atais/9c72e469b1cbec35c7c430ce03de2a6b/raw/36808a0544628398f26b48f7a3c7b309872ca2c6/cask_upgrade.sh | bash /dev/stdin 
  (set -x; brew update;)

  (set -x; brew cleanup;)
  (set -x; brew cask cleanup;)

  red=`tput setaf 1`
  green=`tput setaf 2`
  reset=`tput sgr0`

  casks=( $(brew cask list) )

  for cask in ${casks[@]}
  do
    version=$(brew cask info $cask | sed -n "s/$cask:\ \(.*\)/\1/p")
    installed=$(find "/usr/local/Caskroom/$cask" -type d -maxdepth 1 -maxdepth 1 -name "$version") 
    if [[ -z $installed ]]; then
      echo "${red}${cask}${reset} requires ${red}update${reset}."
      (set -x; brew cask uninstall $cask --force;)
      (set -x; brew cask install $cask --force;)
    else
      echo "${red}${cask}${reset} is ${green}up-to-date${reset}."
    fi
  done
fi

#Homebrew will show warning message if already installed.  
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

# Install Homebrew-cask. A CLI workflow for the adminisration of Mac applications distributed as binaries http://caskroom.io
echo Tapping caskroom/cask...
brew tap caskroom/cask
brew install brew-cask 

# Install Visual Studio Code
brew cask install visual-studio-code

# Install atom
brew cask install atom

# Install iTerm2
brew cask install iterm2

# Install Postman
brew cask install postman

# Install SourceTree
brew cask install sourcetree

# Install Chrome
brew cask install google-chrome

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
