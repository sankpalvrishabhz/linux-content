ls ../temp1
echo -e "\n a) Test if particular folder exists in current directory or not\n"
[ -d "/c/Users/Vrishabh/TerminalCommands/linux-content/temp1/temp2" ] && echo "folder already exists." || echo "folder does not exists."
echo -e "\n b) If it’s doesn’t exist then create it else print “Folder already exists…”\n"
if [ -d "/c/Users/Vrishabh/TerminalCommands/linux-content/temp1/temp2" ]
then
    echo "folder already exists."
else
    mkdir ../temp1/temp2 | echo "folder does not exist; has been created"
fi
