if [ $1 ];then
ID=$1
((NEW=`pct list | awk '{print $1}' | grep -v VMID | tail -n 1`+1))
echo "Starting clone" $ID to $NEW
BACKUP=`vzdump $ID --mode snapshot | grep 'creating archive' | awk '{print $4}'`
pct restore $NEW ${BACKUP//\'/} -storage local-lvm
else
echo "use: clone_CT.sh <VMID>"
fi
