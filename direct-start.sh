#!/bin/bash

# ===================
# 2023-11-30
# run this if conky fail to auto reload
# when saving conf after edit
# ===================

killall conky
sleep 1
clear
echo "\nFiring up Rss-feed\n"
sleep 2
echo "done..."

conky -c $HOME/.config/conky/conky-nationell-feed/RSS.conf &> /dev/null &
sleep 2
exit
