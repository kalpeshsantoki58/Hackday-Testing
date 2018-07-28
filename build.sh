git pull
branch=$(git symbolic-ref --short HEAD)
# image_name='hackday-testing:'$branch
c_name='hackday-testing-'$branch
image_name=$branch':1'
p_no=`cat port_number`
# image_name=$brnach$suffix
echo $image_name
echo $p_no
docker rm -f $c_name
docker rmi -f $image_name
docker build -t $image_name .
docker run -d -p $p_no:80 --name $c_name $image_name