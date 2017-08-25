Need to have Kafka and Zooker installed in the Host environment

#Building and creating a docker image
sudo docker build -t poc-app .

#Running a docker container use --net="host" to access the host os server as localhost
sudo docker run -v /home/ankita/go:/go --net="host" --name poc-go poc-app

