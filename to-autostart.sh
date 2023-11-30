#!/bin/bash

sleep 30

conky -c $HOME/.config/conky/conky-nationell-feed/RSS.conf &> /dev/null &
exit
