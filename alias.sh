#!/bin/bash

path=$(find ~ -name "create_file.sh" | sed -n "1p")

echo -e "alias cf='$path'" >> ~/.zshrc
echo -e "alias cf='$path'" >> ~/.bashrc
