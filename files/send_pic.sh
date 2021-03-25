#!/bin/sh

SUBJECT="A wild "$1" appears!"
BODY="Check this guy out!"

sleep 3
cat b.csv | tail -n 1 | awk -F, '{print $5}' | base64 -d > bird.jpg

sleep 2
echo "$BODY" | mailx -s "$SUBJECT" -a bird.jpg YOUR_EMAIL_ADDRESS_HERE

rm bird.jpg
