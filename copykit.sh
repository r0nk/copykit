#!/bin/bash

while clipnotify; do
	play -q rip.ogg vol 0.25

	if xclip -o | base64 -d >/dev/null;
	then
		xclip -o | base64 -d
		spd-say "base64"
	fi

	if xclip -o | grep -E "^[0-9a-fA-F]+$" ;
	then
		spd-say "hex"
	fi
done
