echo -e "\n a) View access.log without opening it using editor\n"
ls ../access.log
echo -e "\n b) Print client ip field access log\n"
cat ../access.log | awk '{print $16}'
echo -e "\n c) Sort extracted client IP and count it\n"
echo -e "Sorted List"
cat ../access.log | awk '{print $16}' | sort -n
echo -e "\n count\n"
cat ../access.log | awk '{print $16}' | grep -c '^'
echo -e "\n d) Print 4 unique client IPs\n"
cat ../access.log | awk '{print $16}' | sort -n | uniq | head -n 5
