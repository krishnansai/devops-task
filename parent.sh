if [ -f "child.sh" ]; then
    chmod 700 child.sh
	./child.sh 10
else
	echo "Child.sh file is not present in current dir"
fi
