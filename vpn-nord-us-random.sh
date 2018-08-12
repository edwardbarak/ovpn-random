# Force sudo
if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi

# Get list & count of US servers
list=$(ls /etc/openvpn/ovpn_tcp/ | grep us\[0-9]*\.nordvpn\.com\.tcp\.ovpn)
#echo $list #debug
cnt=$(echo $list | wc -w)
echo $cnt #debug

# Select random number between 1 and $cnt
n=$(( ( RANDOM % $cnt )  + 1 ))

# VPN to server $n
nserver=$(echo $list | cut -d " " -f $n)
openvpn /etc/openvpn/ovpn_tcp/$nserver

