if [ "$1" ];then
list=$1
for item in $list ;do
pct stop $item
pct destroy $item
done
echo "fin"
pct list
else
echo "use: delete_server.sh \"<VMID1> <VMID2>..\""
fi
