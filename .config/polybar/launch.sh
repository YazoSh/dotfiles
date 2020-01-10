#!/usr/bin/bash

# kill all prev poly bars
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# launch polybar
echo "---" | tee -a /tmp/polybarlog
polybar mybar >>/tmp/polybar.log 2>&1

echo "Bar launched..."
