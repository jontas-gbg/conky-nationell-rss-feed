#!/usr/bin/env python3

# ================
# 2023-11-29 jontas
# make sure you've got feedparser module installed
# ex. [pip install feedparser] or [sudo pacman -S python-feedparser]
# ================

import feedparser
import sys
from html import unescape

uri = sys.argv[1]            # URI for RSS feed
lines = int(sys.argv[2])     # Num titles
titlenum = int(sys.argv[3])  # Num extra titles

if not uri:
    print("URI needed")
else:
    # Set defaults if there is nothing declared in .conf
    if not lines:
        lines = 5
    if not titlenum:
        titlenum = 2

    feed = feedparser.parse(uri)

    # Process titles
    for item in feed.entries[:lines + titlenum]:
        title = item.title
        print(unescape(title))
