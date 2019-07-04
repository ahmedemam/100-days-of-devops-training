# assignment 3 : network with DNS ROUND ROBIN

# doing this assignment using elsatisearch:2 image
# research and use --net-alias search 
docker network create elastic_network   # create network  
docker container run elsatisearch:2     # build elasticsearch image 
docker container run --detach --network elastic_network --net-alias search elsatisearch:2 # for 1st container randomely choosen
docker container run --detach --network elastic_network --net-alias search elsatisearch:2 # for 2nd container randomely choosen

docker container run --rm alpine nslookup search --network elastic_network # nslookup alpine with 2 containers

docker container run --rm --net elastic_network centos curl -s search:9200 # search inside centos 
