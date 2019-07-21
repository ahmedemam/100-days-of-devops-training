# Assignment 1: Docker Swarm || Voting App
# networks 
# volumes 
# images as a container as a service in nodes 
# service 
# nodes 
`docker swam init` # start swarm mode 
`docker network create -d overlay front_end` # create a front_end network 
`docker network create -d overlay back_end` # create a back_end network 
# `--mount type=volume. source=db-data, target=/var/lib/postgresql/data` # 
`docker service create --name vote -p 80:80 --network front_end --replicas=2 dockersamples/examplevotingapp_vote:before`  # create a frone_end app using python from docker sample of voting app  
`docker service create --name db --network back_end --mount type=volume,source=db-data, target=/var/lib/postgresql/data postgres:lastest` # create a database db:postgresql with volume ....
`docker service create --name=redis --network=front_end --replicas=2 redis:latest` # creat a redis memory database on front_end network with front_end applicaiton  
`docker service create --name=worker --network=front_end --network=back_end dockersamples/examplevotingapp_worker` # create a worker back_end application with front_End and back_end applicaiton 
`docker service create --name=result --network=back_end -p 551:80 dockersamples/examplevotingapp_result:before` # create a result back_end app 


