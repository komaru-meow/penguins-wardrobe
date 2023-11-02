#!/bin/bash
HOSTNAME=$(hostname)
IPADDRESS=$(hostname -I| awk '{print $1;}')
cat <<EOF >/etc/hosts
127.0.0.1 localhost localhost.localdomain
${IPADDRESS} ${HOSTNAME} ${HOSTNAME}.localdomain pvelocalhost pvelocalhost.pvelocaldomain
# The following lines are desirable for IPv6 capable hosts
::1     ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
ff02::3 ip6-allhosts
EOF
