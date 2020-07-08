echo -e "\n a) Identify files which have modified time greater than 7 days\n"
find /c/Users/Vrishabh/Downloads/ -iname "*.exe" -mtime -7 -print
echo -e "\n b) Move this files to the backup folder\n"
mv /c/Users/Vrishabh/Downloads/*.exe ../temp
ls ../temp
