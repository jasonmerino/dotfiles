#!/bin/bash

echo "Linking snippets..."
ln -s "$PWD/snippet-console-log.sublime-snippet" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/"
ln -s "$PWD/snippet-context-dump.sublime-snippet" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/"
ln -s "$PWD/snippet-it.sublime-snippet" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/"
ln -s "$PWD/snippet-desc.sublime-snippet" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/"
ln -s "$PWD/snippet-nlog.sublime-snippet" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/"

echo "Linking settings..."
ln -s "$PWD/Preferences.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/"
ln -s "$PWD/Default (OSX).sublime-keymap" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/"

echo "Linking packages..."
# ln -s "$PWD/GitGutter.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/GitGutter.sublime-settings"
ln -s "$PWD/Package Control.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/"
ln -s "$PWD/SublimeLinter.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/"