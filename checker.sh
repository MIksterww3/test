sudo -s
cd /tmp/kopit/
while (true)
do
result=`ps aux | grep -i "time1.sh" | grep -v "grep" | wc -l`

if [ $result -ge 1 ]
	then
	echo "script is running"
else
	echo "script is not running"
	sudo ./time1.sh & ./checker.sh
fi
sleep 10
done;
