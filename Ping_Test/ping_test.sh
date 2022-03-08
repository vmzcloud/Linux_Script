while IFS=, read -r name ip
do
   ping -q -c1 -W 1 $ip > /dev/null
   if [ $? -eq 0 ]
   then
        echo "$name,$ip,OK"
   else
        echo "$name,$ip,FAIL"
   fi
done < $1
