# This script can add the IP and URL to /etc/hosts

IP=$1
URL=$2

# check arguments
if [ -z "${IP}" ] || [ -z "${URL}" ]; then
    echo -e "\033[31mError\033[0m: IP_ADDRESS or URL is not specified"
    echo -e "\033[32mUsage\033[0m: ./add_host.sh IP_ADDRESS URL"
else
    COMBINED="${IP} ${URL}"
    echo $COMBINED | sudo tee -a /etc/hosts
fi
