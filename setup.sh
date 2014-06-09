#!/bin/bash
# Install  Homebrew. Homebrew  is the equivalent of apt-get for linux. Its required to install tools such as git and wget.
# Mac OS 10.9 will automatically prompt user to install XCode command line tools which is a pre-requisite.
which brew 
RETSTATUS=$?
if [ $RETSTATUS -ne 0 ]
then
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
  brew update
else
  tput setaf 1 && tput smul
  echo Warning:
  tput sgr0
  echo Homebrew already installed.
fi

# Install Git
brew install git #Homebrew will show warning message if already installed.

# Install kdiff3 & set it as the default external  diff/merge too for git
brew list | grep kdiff3
RETSTATUS=$?
if [ $RETSTATUS -ne 0 ]
then
  brew install kdiff3
  git config --global diff.tool kdiff3 
  git config --global merge.tool kdiff3
else
  tput setaf 1 && tput smul
  echo Warning:
  tput sgr0
  echo kdiff3 already installed.
fi

# Install groovy
brew install groovy

# Install Grails
brew install grails

# Install Gradle
brew install gradle

# Install Homebrew-cask. A CLI workflow for the adminisration of Mac applications distributed as binaries http://caskroom.io
echo Tapping caskroom/cask...
brew tap caskroom/cask
brew install brew-cask

# install JDK 1.6x for IntelliJ compatibality reasons
brew cask install java6

# Install IntelliJ Ulitmate
brew cask install intellij-idea

# Install Alfred
brew cask list | grep alfred 
RETSTATUS=$?
if [ $RETSTATUS -ne 0 ]
then
  brew cask install alfred 
  # Run "brew cask alfred link" after starting Alfred to enable Alfred to search Caskroom
  open -a ~/Applications/Alfred\ 2.app
  sleep 5
  brew cask alfred link
else
  brew cask install alfred #use brew casks' warning message
fi

# Install SequelPro
brew cask install sequel-pro

# Install Skype
brew cask install skype

# Install Chrome
brew cask install google-chrome

# Install dotfiles
git clone https://github.com/johnlim/dotfiles.git ~/git/dotfiles
chmod +x ~/git/dotfiles/setup.sh
~/git/dotfiles/setup.sh
