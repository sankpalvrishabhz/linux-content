echo -e "\n a) View access.log without opening it using editor\n"
cat ../access.log
echo -e "\n b) Print web responce code field which has given timestamp\n"
grep 20/Sep/2019 ../access.log | awk '{print $9}'
echo -e "\n c) Sort extracted responce code and count it\n"
cat ../access.log | awk '{print $9}' | sort
echo -e "\ncount\n"
cat ../access.log | awk '{print $9}' | grep -c '^'
echo -e "\n d) Print 4 unique responce code count\n"
cat ../access.log | awk '{print $9}' | sort  | uniq | head -n 4
