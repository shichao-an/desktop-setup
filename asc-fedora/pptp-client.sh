#!/bin/bash


yum -y install pptp pptp-setup

echo -n "Tunnel: "
read tunnel
echo -n "Server: "
read server
echo -n "Username: " 
read username


# This command will prompt for password
pptpsetup --create "$tunnel" --server "$server" --username "$username" \
    --encrypt
# Check out the tunnel file at /etc/ppp/peers directory

## To connect to the server using the tunnel created:
# pppd call tunnel_name

## Update routing table to allow all traffic through ppp0 interface:
# ip route add default dev ppp0

## To stop the connection:
# killall pppd

## To delete the tunnel:
# pptpsetup --delete tunnel_name
