# random global nordvpn
service = nordvpn
# prompt username
read -p 'Username:' username

# prompt password
read -p 'Password:' password

# select random nordvpn TCP server
# ovpn path is /etc/openvpn/ovpn_tcp
servers = ls -l /etc/openvpn/ovpn_tcp | grep $service
servers_count = cat $servers | wc -l
# pick random server in $servers
index = $RANDOM % $servers_count + 1
# TODO: select server using servers[$index]
# vpnFile = servers[$index] 
vpnFile = sed -n $index'p' < $servers    

# run openvpn
openvpn $vpnFile # TODO: add username and password flags     



    

