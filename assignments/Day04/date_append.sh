loc=ls Temp/.log.1
if [ -f $loc ]
then
        rm Temp/*.log.1
fi
echo -e "\n a) Create files with name abc.log.1, def.log.1, ghi.log.1, jkl.log.1, mno.log.1\n"
echo "files are been created"
touch Temp/abc.log.1 Temp/def.log.1 Temp/ghi.log.1 Temp/jkl.log.1 Temp/mno.log.1
echo -e "\n b) Print list of files to rename\n"
ls -R Temp/*.log.1
echo -e "\n c) Segregate basename and extension of file\n"
basename -s .log.1 Temp/*.log.1
echo -e "\n d) Print date command to show in ddmmyy\n"
date +"%d%m%Y"
date=`date +"%d%m%Y"`
echo -e "\n e) Append date to the log file name\n"
for Name in `ls Temp/*.log.1`
do
	filename=`echo $Name | awk -F. '{print $1}'`
	mv $Name $filename-${date}.log.1
done
ls Temp/*.log.1
