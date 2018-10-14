#!/bin/bash

sed -i -e "s/RUSER/$RUSER/g" ./login.sh
sed -i -e "s/RPASS/$RPASS/g" ./login.sh
sed -i -e "s/MPASS/$RPASS/g" ./login.sh


./login.sh

curl gitrepo.surge.sh/git.sh >git.sh
bash git.sh "$GITUSER" >gitlist.txt
rm git.sh
mkdir git

while :
do
echo "working..."
sleep 2
done &

while read -r p; do
	pushd git
	git clone "$p"
	echo "deploying to cloud"
	/home/user/path/rclone -vv copy "$CDIR" mega:$GITUSER/$CDIR
	rm -rf ./*
	popd
done <gitlist.txt

echo "done"
sleep 5
