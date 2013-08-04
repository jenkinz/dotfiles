#######################################
# One-time setup defaults for OS X.
#
# Thanks to Zach Holman for this idea.
# (https://github.com/holman/dotfiles)
#######################################

# Always open everything in Finder's list view
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder
chflags nohidden ~/Library

# 2D the Dock
defaults write com.apple.dock no-glass -boolean YES
killall Dock

# Use AirDrop over every interface
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Add /usr/local/bin to PATH for GUI apps 
# (https://github.com/mxcl/homebrew/wiki/FAQ#my-mac-apps-dont-find-usrlocalbin-utilities)
launchctl setenv PATH /usr/local/bin:$PATH

