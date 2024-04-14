for ip in $(cat /tmp/ip-list.txt)
do
whois $ip |grep  "country:        $1" > /dev/null
	if [ $? -eq 0 ]
	then 
	   echo "$ip"
	fi
done
