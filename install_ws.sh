#!/bin/bash
apt update && apt install wget -y;
echo -e "INSTALADOR WS PROXY"
cd /etc/SSHPlus;
wget https://raw.githubusercontent.com/Andley302/wsproxy/main/wsproxy.py;
echo -e "netstat -tlpn | grep -w 80 > /dev/null || {  screen -r -S 'wsproxy' -X quit;  screen -dmS wsproxy python /etc/SSHPlus/wsproxy.py 80; }" >>/etc/autostart;
netstat -tlpn | grep -w 80 > /dev/null || {  screen -r -S 'wspy' -X quit;  screen -dmS wspy python /etc/SSHPlus/wsproxy.py 80; };
