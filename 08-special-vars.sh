#!/bin/bash
echo "ALL variables passed to the script: $@"
echo "Number of variables passed: $#"
echo "Script name: $0"
echo "current working directory: $PWD"
echo "home directory of current user: $HOME"
echo "PID of the script executing now: $$"
sleep 100 &
echo "PID of last background command: $!"