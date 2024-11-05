uid=`cat /data/system/packages.list | grep com.tencent.tmgp.cf  | awk '{print $2}'`
echo "欢迎使用秋天拦截"

   iptables -F
   iptables -X
   iptables -Z
echo -e "\033[43m下线记得执行2否则没网络\033[0m"
echo -e "\033[43m正在执行拦截\033[0m"
echo -e '\033[35;;1m请注意演戏 \033[0m'
echo -e "CF秋天过检 开启中 耐心等待"
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 10001 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 27766 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 999 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 49155 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 999 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 80 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 8011 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 8013 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 8081 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 10001 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 27766 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 999 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 49155 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 999 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 80 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 8011 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 8013 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 8081 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 1883 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 1883 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 10012 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 1884 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 504 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 54304 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 10012 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 1884 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 504 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 54304 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 33576 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 33576 -j DROP
echo "所有IP和端口数据已尝试拦截完成"

echo -e '\033[32;;1m ###秋天牛逼... 100% ### \033[0m' 
