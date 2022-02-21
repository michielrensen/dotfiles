#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

fi

# Install sane brew packages
brew install ansible ansible-lint antigen argocd awscli bat circleci shopify/shopify/ejson gh git-crypt helm heroku-node htop hub istioctl jq k9s kns kubectx mkcert molecule nmap packer php@7.4 rbenv rbenv-chefdk rsync ruby ruby-build shellcheck telnet terraform tmate vault vim wget

# Install sane brew cask packages
brew install --cask 1password brave-browser docker dropbox font-hack font-hack-nerd-font font-meslo-for-powerline font-meslo-lg-dz font-meslo-lg-nerd-font gdisk google-cloud-sdk gpg-suite iterm2 keybase sequel-ace slack stats vagrant virtualbox zoom

exit 0