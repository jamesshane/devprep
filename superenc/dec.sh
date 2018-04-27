#gpg -d --batch --passphrase iyyp
gpg -d a.txt.gpg > a.txt
#gpg -d --batch --passphrase $(cat a.txt) $1 > $2
#echo "$(cat a.txt)" | gpg --batch --yes  --passphrase-fd 0 $1 
gpg  --decrypt --batch --yes --passphrase-file a.txt $1 
shred a.txt
rm a.txt
 
