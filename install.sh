#!/bin/bash

echo "Installing latest Atom release.."

# download, install, remove deb
curl -#L https://atom.io/download/deb -o atom.deb && sudo dpkg -i atom.deb && rm atom.deb

# copy preserved configs
mkdir -p ~/.atom
cp -r config/* ~/.atom/

# install packages/themes
apm install atom-material-ui
apm install atom-material-syntax
apm install minimap
apm install minimap-find-and-replace
apm install minimap-cursorline
apm install minimap-selection
apm install minimap-codeglance
