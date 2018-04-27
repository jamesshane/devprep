gpg -r "se" --encrypt $1
shred $1
rm $1

