echo -e "\n a) Create two directories as “original” and “update”\n"
mkdir ../original ../updated
echo -e "\n b) Copy files ‘original-file.sh’ to the folder “original” and “update-file.sh” to the folder “updated”\n"
cp ../Assignment/original-file.sh ../original/original-file.sh
cp ../Assignment/updated-file.sh ../updated/updated-file.sh
ls -R ../original/ 
ls -R ../updated/
echo -e "\n c) Find the difference between these directories using linux command\n"
diff ../original/ ../updated/
echo -e "\n d)	Make copy of folder “original” to some other directory as “original-backup” and apply changes to ‘original-file.sh’ file\n"
cp -R ../original/* /c/Users/Vrishabh/Documents/original-backup
ls -R /c/Users/Vrishabh/Documents/original-backup
echo -e "\n e)	Verify that both folder “update” and “original-backup” have no difference\n"
diff -q ../updated/ /c/Users/Vrishabh/Documents/original-backup
