ls
echo -e "\n a) View /etc/passwd file:\n"
cat ../etc/passwd.txt
echo -e "\n b) Print the 1st field from /etc/passwd file:\n"
cat ../etc/passwd.txt |awk -F: '{print $1}'
echo -e "\n c) Print all userids > 1000:\n"
cat ../etc/passwd.txt |awk -F: '1000<$4 {print $4}'
echo -e "\n d) Print the 2nd field to get home directory\n"
cat ../etc/passwd.txt |awk -F: '{print $6}'
echo -e "\n e) Use command substitution to get user list and home directory\n"
