#!/bin/bash


#man nmcli-examples
nmcli connection show

nmcli con add con-name mycon ifname eno16777736 type ethernet ip4 192.168.199.100/24 gw4 192.168.199.2

nmcli connection show

nmcli connection up mycon
