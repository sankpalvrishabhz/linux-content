echo -e "\n a) Execute “hello” command at command prompt\n"
echo hello
echo -e "\n b) Check execution status of “hello” command\n"
hello
if [ $? == 0 ]
then
	echo command executed successfully
else
        echo command executed unsuccessfully
fi
echo -e "\n c) Execute “ls” command at command prompt\n"
echo ls
ls
echo -e "\n d) Check execution status of “ls” command\n"
if [ $? == 0 ]
then
        echo command executed successfully
else
        echo command executed unsuccessfully
fi
