#!/bin/sh

# based on https://macos-defaults.com/dock/autohide.html and https://mac.install.guide/mac-setup

# enable three-finger drag with trackpad
defaults write com.apple.AppleMultitouchTrackpad "TrackpadThreeFingerDrag" -bool true

# enable tap to click
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
/System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u

# reset dock persistent apps
defaults write com.apple.dock persistent-apps -array

# auto hide Dock
defaults write com.apple.dock "autohide" -bool true

# dock auto hide delay
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -int 0

# disable recent apps in Dock
defaults write com.apple.dock "show-recents" -bool false

# make icon size smaller
defaults write com.apple.dock "tilesize" -int 60

# assign Fn button to change input source
defaults write com.apple.HIToolbox AppleFnUsageType -int 1

# change Texteditor default format to text
defaults write com.apple.TextEdit "RichText" -bool false

# enable keyboard navigation
defaults write NSGlobalDomain AppleKeyboardUIMode -int 2

# group windows by application
defaults write com.apple.dock "expose-group-apps" -bool true

# keep spaces arrangement
defaults write com.apple.dock "mru-spaces" -bool false

killall Dock


## Finder
# show hidden files
defaults write com.apple.finder "AppleShowAllFiles" -bool true

# show path bar
defaults write com.apple.finder "ShowPathbar" -bool true

# show status bar
defaults write com.apple.finder "ShowStatusBar" -bool true

# set default value to column
defaults write com.apple.finder "FXPreferredViewStyle" -string clmv

# show folders first
defaults write com.apple.finder "_FXSortFoldersFirst" -bool true

# set search scope to current directory
defaults write com.apple.finder "FXDefaultSearchScope" -string SCcf

# disable warning when file ext is modified
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool false

# set default location for new Finder windows to home directory
defaults write com.apple.finder NewWindowTarget -string "PfHm"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

killall Finder


# remove window margins
defaults write com.apple.WindowManager "EnableTiledWindowMargins" -int 0

# disable smart quotes
defaults write com.apple.TextEdit "SmartQuotes" -bool false

# show file extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
