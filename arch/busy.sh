#!/bin/env sh

sudo pacman -S tcdump ccze dialog

echo "alias busy='rnd_file=$(find /usr/include -type f -size +5k | sort -R | head -n 1) && vi +$((RANDOM%$(wc -l $rnd_file | cut -f1 -d\" \"))) $rnd_file'" >> $HOME/.zshrc
echo "alias busy2='sudo tcpdump -vv | ccze'" >> $HOME/.zshrc
echo "alias busy3='cat /dev/urandom | hexdump -c | ccze -A'" >> $HOME/.zshrc
echo "alias busy4='for i in {0..600}; do echo $i; sleep 60; done | dialog --gauge \"Install...\" 6 40'" >> $HOME/.zshrc
