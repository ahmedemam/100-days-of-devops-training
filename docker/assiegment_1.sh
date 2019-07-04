# Assignment #1: managing multiple containers 
    # -- mysql / nginx / httpd 

# remove images 

# running mysql 
docker search mysql
docker run --name=mysql -p 3306:3306 --env MYSQL_ROOT_RANDOM_PASSWORD=yes -d mysql
docker run --name=mysql -p 3306:3306 --env MYSQL_USER=root MYSQL_USER_PASSWORD=password -d mysql

# running httpd
docker search httpd 
docker run --name=httpd -p 8080:80 -d httpd

# running nginx 
docker search nginx 
docker run --name=nginx -p 80:80 -d nginx

# rename docker image 
docker tag nginx new_nginx
docker rmi nginx 

# rename docker container 
docker rename nginx new_nginx # for containers only

