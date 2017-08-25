Note:
- <b>Need to have Kafka and Zooker installed in the Host environment</b>
- <b>Open the Dockerfile and replace your git username and password in the <git-username> and <git-password> parameters</b>
   

#Building and creating a docker image<br>
sudo docker build -t poc-app .

#Running a docker container use --net="host" to access the host os server as localhost<br>
sudo docker run -e KAFKA_CONFIG='/go/src/POC/config' -v /home/ankita/go:/go --net="host" --name poc-go poc-app


#If you want to rerun the docker image poc-go multiple times you will have to remove the already created container first and then run it again
sudo docker rm -f poc-go

