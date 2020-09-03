
docker ps -a | grep "^[a-z0-9]\{12\}" >output

cat output | awk '{print $1}' | tee output
for line in `cat output`
do
	string="${line:0:12}"
	num=${#string}

	if test 12 -eq $num
	then
		docker rm $string
    	echo "删除CONTAINER ID=$string"
	fi
done
sudo rm output
