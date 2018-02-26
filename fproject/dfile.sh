path=$1
   if [ -z "$1" ]
then
   echo "input argument missing"
else
rm /home/vagrant/$path/filelist.txt
array=( f1 f2 f3 )
for i in "${array[@]}"
do
   find /home/vagrant/$path/$i -type f | sed 's/\/home\/vagrant\/'$path'/www.x.com/g' >>/home/vagrant/$path/filelist.txt
done
fi







