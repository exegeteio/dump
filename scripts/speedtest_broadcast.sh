#!/usr/bin/env zsh

file="$(mktemp)"
source $HOME/.zshrc
/usr/local/bin/docker run --rm speedtest > "$file" 
$HOME/code/github/exegeteio/dump/scripts/speedtest_broadcast.rb < "$file"
rm $file
