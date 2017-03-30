if [ $1 ];then
NAME=$1
((ID=`qm list | awk '{print $1}' | grep -v VMID | tail -n 1`+1))
qm create $ID  --cdrom /var/lib/vz/template/iso/fr_windows_xp_pro.iso --kvm 0 --memory 512 --ostype wxp --storage local-lvm --name $NAME -net0 rtl8139,bridge=vmbr0 --bootdisk ide0 --onboot no --sockets 1 --ide0 local-lvm:10
qm start $ID
else
echo "use: create_xp-VM.sh <NAME>"
fi
