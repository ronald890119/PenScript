#!/bin/bash

# This script uses gobuster command to find subdomains of the site

URL=$1

# check arguments
if [ -z "${URL}" ]; then
    echo -e "\033[31mError\033[0m: URL is not specified"
    echo -e "\033[32mUsage\033[0m: ./mygo.sh URL"
else
    gobuster vhost -w /usr/share/wordlists/subdomain.txt -u $URL -t 100 --append-domain
fi
