#!/bin/bash
apt update && apt install wget -y;
wget https://raw.githubusercontent.com/Andley302/utils/main/antcrashws.sh -O /bin/antcrashws.sh > /dev/null 2>&1
chmod +x /bin/antcrashws.sh;
wget https://raw.githubusercontent.com/Andley302/utils/main/antcrashsockssquid.sh -O /bin/antcrashsockssquid.sh > /dev/null 2>&1
chmod +x /bin/antcrashsockssquid.sh;
wget https://raw.githubusercontent.com/Andley302/utils/main/antcrashsocksdirect.sh -O /bin/antcrashsocksdirect.sh > /dev/null 2>&1
chmod +x /bin/antcrashsocksdirect.sh;
echo -e "INSTALADOR SOCKS PROXY"
cd /etc && rm -rf autostart && wget https://raw.githubusercontent.com/Andley302/wsproxy/main/autostart;
if [ -d "$DIR" ]; then
  # Take action if $DIR exists. #
  echo "Installing config files in ${DIR}..."
  cd /etc/SSHPlus;
  rm -rf wsproxy.py
  rm -rf proxy.py
  wget https://raw.githubusercontent.com/Andley302/wsproxy/main/wsproxy.py;
  wget https://raw.githubusercontent.com/Andley302/wsproxy/main/proxy.py;
  #echo -e "netstat -tlpn | grep -w 80 > /dev/null || {  screen -r -S 'wsproxy' -X quit;  screen -dmS wsproxy python /etc/SSHPlus/wsproxy.py 80; }" >>/etc/autostart;
  #echo -e "netstat -tlpn | grep -w 80 > /dev/null || screen -dmS wsproxy antcrashws.sh 80" >>/etc/autostart;
  #netstat -tlpn | grep -w 80 > /dev/null || {  screen -r -S 'wspy' -X quit;  screen -dmS wsproxy python /etc/SSHPlus/wsproxy.py 80; };
  
  #echo -e "netstat -tlpn | grep -w 8080 > /dev/null || screen -dmS wsproxy antcrashws.sh 8080" >>/etc/autostart;
  #netstat -tlpn | grep -w 8080 > /dev/null || {  screen -r -S 'wspy' -X quit;  screen -dmS wsproxy python /etc/SSHPlus/wsproxy.py 80; };
  
  #echo -e "netstat -tlpn | grep -w 8880 > /dev/null || screen -dmS wsproxy antcrashws.sh 8880" >>/etc/autostart;
  #netstat -tlpn | grep -w 8880 > /dev/null || {  screen -r -S 'wspy' -X quit;  screen -dmS wsproxy python /etc/SSHPlus/wsproxy.py 8880; };
  
  #echo -e "netstat -tlpn | grep -w 2052 > /dev/null || screen -dmS wsproxy antcrashws.sh 2052" >>/etc/autostart;
  #netstat -tlpn | grep -w 2052 > /dev/null || {  screen -r -S 'wspy' -X quit;  screen -dmS wsproxy python /etc/SSHPlus/wsproxy.py 2052; };
 
  #echo -e "netstat -tlpn | grep -w 2082 > /dev/null || screen -dmS wsproxy antcrashws.sh 2082" >>/etc/autostart;
  #netstat -tlpn | grep -w 2082 > /dev/null || {  screen -r -S 'wspy' -X quit;  screen -dmS wsproxy python /etc/SSHPlus/wsproxy.py 2082; };
  
  #echo -e "netstat -tlpn | grep -w 2086 > /dev/null || screen -dmS wsproxy antcrashws.sh 2086" >>/etc/autostart;
  #netstat -tlpn | grep -w 2086 > /dev/null || {  screen -r -S 'wspy' -X quit;  screen -dmS wsproxy python /etc/SSHPlus/wsproxy.py 2086; };
  
  #echo -e "netstat -tlpn | grep -w 2095 > /dev/null || screen -dmS wsproxy antcrashws.sh 2095" >>/etc/autostart;
 # netstat -tlpn | grep -w 2095 > /dev/null || {  screen -r -S 'wspy' -X quit;  screen -dmS wsproxy python /etc/SSHPlus/wsproxy.py 2095; };
  
  #echo -e "netstat -tlpn | grep -w 8080 > /dev/null || screen -dmS socks_direct antcrashsocksdirect.sh 8080" >>/etc/autostart;
  #netstat -tlpn | grep -w 8080 > /dev/null || {  screen -r -S 'socks_direct' -X quit;  screen -dmS socks_direct python /etc/SSHPlus/wsproxy.py 8080; };
 # echo -e "netstat -tlpn | grep -w 8088 > /dev/null || screen -dmS socks_squid antcrashsockssquid.sh 8088" >>/etc/autostart;
 # netstat -tlpn | grep -w 8088 > /dev/null || {  screen -r -S 'socks_squid' -X quit;  screen -dmS socks_squid python /etc/SSHPlus/wsproxy.py 8088; };
else
  cd /etc/CrashVPN;
  rm -rf wsproxy.py
  wget https://raw.githubusercontent.com/Andley302/wsproxy/main/wsproxy.py;
  #echo -e "netstat -tlpn | grep -w 80 > /dev/null || {  screen -r -S 'wsproxy' -X quit;  screen -dmS wsproxy python /etc/CrashVPN/wsproxy.py 80; }" >>/etc/autostart;
  #echo -e "netstat -tlpn | grep -w 80 > /dev/null || screen -dmS wsproxy antcrashws.sh 80" >>/etc/autostart;
  #netstat -tlpn | grep -w 80 > /dev/null || {  screen -r -S 'wspy' -X quit;  screen -dmS wspy python /etc/CrashVPN/wsproxy.py 80; };
fi

