#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Install Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Install global Composer packages
/usr/local/bin/composer global require laravel/installer  laravel/valet

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install

# Create a Sites directories
mkdir $HOME/Sites

# Create Code directory for Laravel Homestead
mkdir $HOME/Code

# Copy tmux.conf - Will consider symlink later
cp .zshrc ~/.zshrc

# Copy tmux.conf
cp tmux.conf ~/.tmux.conf

# Install tmuxinator
gem install tmuxinator

# Setup base tmuxinator session
cp tmuxinator.yml ~/.tmuxinator/sesh.yml

# Set macOS preferences
# We will run this last because this will reload the shell
source .macos