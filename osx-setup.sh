#!/bin/bash
#
# Jakob Hilarius <http://syscall.dk>, 2012-2024
#

# Show the ~/Library folder
chflags nohidden ~/Library

# =================================

# Always show scrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# Show all filename extensions in Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show status bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
