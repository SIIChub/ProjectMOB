if [ $1 ];then
NAME=$1
((ID=`pct list | awk '{print $1}' | grep -v VMID | tail -n 1`+1))
pct create $ID local:vztmpl/debian-8.0-standard_8.6-1_amd64.tar.gz --hostname $NAME --storage local-lvm --net0 name=eth0,bridge=vmbr0,ip=dhcp
pct start $ID
sleep 3
pct exec $ID apt-get update
pct exec $ID apt-get install proftpd
else
echo "use: create_ftp-CT.sh <NAME>"
fi
