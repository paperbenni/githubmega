#!/bin/bash
bash login.sh

curl gitrepo.surge.sh/git.sh >git.sh
bash git.sh $GITUSER >gitlist.txt
rm git.sh
mkdir git
while read -r p; do
	pushd git
	git clone "$p"
	rclone copy $CDIR mega:$GITUSER/$CDIR
	rm -rf ./*
	popd
done <gitlist.txt

echo "done"
sleep 5
