#! /bin/bash
upd(){
    apt-get update
    apt-get upgrade
    apt install masscan
    apt install libpcap-dev
    apt install python
    pip3 install requests
}

pyzt(){
    curl -o xui.py https://pastebin.com/raw/RiZSfUgd
}

cvv(){
    python3 xui.py
}
upd
pyzt
echo "输入你的IP段"
read sbip
echo "输入你的最大发包数"
read fucku
masscan -p54321 ${sbip} --max-rate ${fucku} -oG results.txt
cvv

