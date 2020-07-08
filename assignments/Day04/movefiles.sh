echo -e "\n a)  Create files in current directory or any temperory directory -abc.txt, def.txt, ghi.txt, jkl.txt\n"
touch temp/abc.txt temp/def.txt temp/ghi.txt temp/jkl.txt
ls temp/*.txt
echo -e "\n b) Print list of files to move\n"
ls temp/*.txt
echo -e "\n c) Segregate basename and extension of file\n"
for Name in `ls temp/*.txt`
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
echo -e "\n d) Create folder using basename\n"
ls temp/
echo -e "\n e)  Move file to newly created folder\n"
ls -R temp
