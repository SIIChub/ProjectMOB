if [ $1 ];then
NAME=$1
((ID=`pct list | awk '{print $1}' | grep -v VMID | tail -n 1`+1))
pct create $ID local:vztmpl/ubuntu-12.04-standard_12.04-1_amd64.tar.gz --hostname $NAME --storage local-lvm --net0 name=eth0,bridge=vmbr0,ip=dhcp
pct start $ID
else
echo "use: create_ubuntu-CT.sh <NAME>"
fi
