#!/bin/sh 
#
# Hongyi Shen, Kai Wang
# Sun Mar.02 16:55:20 2014 EST
# Sat Apr.05 16:37:27 2014 EDT
# 


PAT_IP="s/.*(inet addr:|inet6? )([a-f0-9.:]+).*/\2/p"
PAT_MAC="s/.*(hwaddr | ether |address: )([a-f0-9.:]+).*/\2/p"
PAT_MSK="s/.*(netmask |mask )([a-fx0-9.:]+).*/\2/p"

match_pat() {
	echo "$out" | awk '{print tolower($0)}' | sed -En "$*"
}

usage() {
	cat <<EOF
$0 [-imn] 
    -i Print all IP addresses
    -m Print all MAC addresses
    -n Print all netmasks
EOF
}


# ----------
# Main
# ----------


out=`cat`


while getopts 'imn' opt; do
	case ${opt} in
		i)
			match_pat $PAT_IP
			;;
		m)
			match_pat $PAT_MAC
			;;
		n)
			match_pat $PAT_MSK
			;;
		*)
			usage
			exit 1
			;;
	esac
done
exit 0
