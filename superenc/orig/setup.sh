#export GNUPGHOME="$(mktemp -d)"
tr -dc A-Za-z0-9 </dev/urandom | head -c 100 > a.txt
cat >foo <<EOF
     %echo Generating a basic OpenPGP key
     Key-Type: DSA
     Key-Length: 1024
     Subkey-Type: ELG-E
     Subkey-Length: 1024
     Name-Real: se 
     Name-Comment: with stupid passphrase
     Name-Email: x@x.x
     Expire-Date: 0
     Passphrase: $(cat a.txt)
     # Do a commit here, so that we can later print "done" :-)
     %commit
     %echo done
EOF
gpg --batch --generate-key foo
cat >foo2 <<EOF
     %echo Generating a basic OpenPGP key
     Key-Type: DSA
     Key-Length: 1024
     Subkey-Type: ELG-E
     Subkey-Length: 1024
     Name-Real: seu 
     Name-Comment: with stupid passphrase
     Name-Email: x@x.x2
     Expire-Date: 0
     Passphrase: The look of love.
     # Do a commit here, so that we can later print "done" :-)
     %commit
     %echo done
EOF
gpg --batch --generate-key foo2
gpg -e -r "seu" a.txt
shred foo
shred foo2
shred a.txt
rm foo*
rm a.txt
shred $0
#rm $0
