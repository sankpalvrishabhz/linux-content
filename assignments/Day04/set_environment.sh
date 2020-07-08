echo -e "\n a) Check whether environment variable usersecret assigned any value or not\n"
echo $USERSECRET
if [ $USERSECRET==null ]
then
        echo "variable not set"
else
	echo "variable already"
fi
echo -e "\n b) Print error if usersecret already set\n"
if [ $USERSECRET==null ]
then
	export USERSECRET="dH34xJaa23"
	echo "variable not set"
else
        echo "variable already set"
fi
echo -e "\n c) Set Environment variable usersecret to given value\n"
echo $USERSECRET
