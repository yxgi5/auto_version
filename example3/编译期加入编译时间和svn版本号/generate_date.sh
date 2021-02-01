#!/bin/sh
Version=1.0
Time=\"$(date '+%Y-%m-%d %H:%M:%S')\"
Output="#define BUILD_TIMER $Time\n#define BUILD_VERSION $Version"
echo -e "$Output" > version.h
