#!/bin/sh

if [ ! -f "/usr/bin/google-chrome" ]; then
    echo "Chrome not found!"
    exit 1
fi

google-chrome --version

pm2 start app.js --name gradient-bot-no-proxy
pm2 logs
