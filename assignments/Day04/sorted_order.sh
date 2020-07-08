echo -e "\n a) View /var/log/httpd/access.log\n"
ls ../access.log
echo -e "\n b) Print field which has urls data\n"
cat ../access.log | awk '{print $7}'
echo -e "\n c) Sort extracted urls and count it\n"
cat ../access.log | awk '{print $7}' | sort
echo -e "\ncount\n"
cat ../access.log | awk '{print $7}' | grep -c '^'
echo -e "\n d) Print 4 unique urls\n"
cat ../access.log | awk '{print $7}' | sort  | uniq | head -n 4
