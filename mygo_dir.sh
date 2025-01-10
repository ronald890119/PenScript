#!/bin/bash

# This script uses gobuster command to find subdirectory of the site

URL=$1

# check arguments
if [ -z "${URL}" ]; then
    echo -e "\033[31mError\033[0m: URL is not specified"
    echo -e "\033[32mUsage\033[0m: ./mygo.sh URL"
else
    gobuster dir -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -t 100 -u $URL
fi
