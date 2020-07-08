
#!/bin/bash
touch ..
for Name in `ls *.txt`
do
	foldername=`echo $Name | awk -F. '{print $1}'`
	if [ -d $foldername ]
	then
		rm -r $foldername
	fi
	mkdir $foldername
	mv $Name $foldername
	echo $Name "added successfully" 
done
ls -R
