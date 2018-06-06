#!/usr/bin/env sh

alias busy='rnd_file=$(find /usr/include -type f -size +5k | sort -R | head -n 1) && vi +$((RANDOM%$(wc -l $rnd_file | cut -f1 -d" "))) $rnd_file'
alias busy2='sudo tcpdump -vv | ccze'
alias busy3='cat /dev/urandom | hexdump -c | ccze -A'
alias busy4='for i in {0..600}; do echo $i; sleep 60; done | dialog --gauge "Install..." 6 40'


