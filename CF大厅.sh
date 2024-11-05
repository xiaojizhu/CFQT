uid=`cat /data/system/packages.list | grep com.tencent.tmgp.cf  | awk '{print $2}'`
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 12000 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 443 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 999 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 8085 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 12000 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 443 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 999 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 8085 -j DROP
#新的
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 15692 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 15692 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 31003 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 31003 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 5692 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 5692 -j DROP
echo "——穿越火线大厅防封开启成功——"