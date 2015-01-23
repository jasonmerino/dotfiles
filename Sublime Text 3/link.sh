#!/bin/bash

echo "Linking snippets..."
ln -s "$PWD/console-log.sublime-snippet" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/console-log.sublime-snippet"
ln -s "$PWD/Preferences.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"

echo "Linking packages..."
# ln -s "$PWD/GitGutter.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/GitGutter.sublime-settings"
ln -s "$PWD/Package Control.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Package Control.sublime-settings"
ln -s "$PWD/SublimeLinter.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/SublimeLinter.sublime-settings"