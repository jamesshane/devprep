for i in `gpg --with-colons --fingerprint "se" | grep "^fpr" | cut -d: -f10`; do gpg --batch --delete-secret-keys "$i" ; done
for i in `gpg --with-colons --fingerprint "se" | grep "^fpr" | cut -d: -f10`; do gpg --batch --delete-keys "$i" ; done
shred a.txt.gpg
rm a.txt.gpg
cp orig/setup.sh .
