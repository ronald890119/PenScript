# PenScript

This repo contains some useful scripts while doing penetration testing. The scripts can only work properly on Kali Linux due to path setting. Feel free to change the path based on your own condition.

  

## Script Usage

### add_host

This script can add the IP and URL to /etc/hosts.

Usage: `./add_host.sh [IP_ADDRESS] [URL]`.

Example: `./add_host 10.10.10.10 example.xyz`

  

### mygo

This script uses gobuster command to find subdirectory of the site. There are two modes available which are directory searching and virtual host searching.

Usage: `./mygo_dir.sh [URL]` or `./mygo_vhost.sh [URL]`.

Example: `./mygo_dir.sh http://example.xyz`

  

## Useful Notes

### Default 404 pages

The default 404 pages can help us get the framework/language of the site if a custom 404 page hasn’t created. For more information, please visit [0xdf](https://0xdf.gitlab.io/cheatsheets/404#express).

### Interactive reverse shell
We can create an interactive shell while using reverse shell. Either Python or script (if Python is not available on target machine) command can do the task. For more information, please visit either [How to Get a Fully Interactive Reverse Shell](https://fahmifj.medium.com/get-a-fully-interactive-reverse-shell-b7e8d6f5b1c1) or [Upgrading Simple Shells to Fully Interactive TTYs](https://blog.ropnop.com/upgrading-simple-shells-to-fully-interactive-ttys/).
1. Python: `python3 -c "import pty; pty.spawn('/bin/bash')"`
2. script: `script /dev/null -c bash`
