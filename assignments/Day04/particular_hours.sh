echo -e "\n a) View access.log without opening it using editor\n"
cat ../access.log
echo -e "\n b) Print urls which has given timestamp.\n"
grep 20/Sep/2019 ../access.log | awk '{print $7}'
echo -e "\n c) Sort extracted urls and count it\n"
cat ../access.log | awk '{print $7}' | sort
echo -e "\ncount\n"
cat ../access.log | awk '{print $7}' | grep -c '^'
echo -e "\n d) Print 4 unique urls\n"
cat ../access.log | awk '{print $7}' | sort  | uniq -u | tail -n 4
