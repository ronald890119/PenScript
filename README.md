# PenScript
This repo contains some useful scripts while doing penetration testing. The scripts can only work properly on Kali Linux due to path setting.

## Script Usage
### add_host
This script can add the IP and URL to /etc/hosts.\
Usage: `./add_host.sh [IP_ADDRESS] [URL]`.\
Example: `./add_host 10.10.10.10 example.xyz`

### mygo
This script uses gobuster command to find subdirectory of the site.\
Usage: `./mygo.sh [URL]`.\
Example: `./mygo.sh http://example.xyz`

## Useful Notes
### Default 404 pages
The default 404 pages can help us get the framework/language of the site if a custom 404 page hasn’t created. For more information, please visit [0xdf](https://0xdf.gitlab.io/cheatsheets/404#express).
