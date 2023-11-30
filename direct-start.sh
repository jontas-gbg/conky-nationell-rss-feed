#!/bin/bash

killall conky
sleep 1
clear
echo "\nFiring up Rss-feed\n"
sleep 2
echo "done..."

conky -c $HOME/.config/conky/conky-nationell-feed/RSS.conf &> /dev/null &
sleep 2
exit
