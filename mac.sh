defaults write com.apple.dock autohide-delay -float 0.05; killall Dock
defaults write com.apple.dock autohide-time-modifier -float 0.35;killall Dock
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write -g KeyRepeat -int 1
defaults write -g InitialKeyRepeat -int 10
