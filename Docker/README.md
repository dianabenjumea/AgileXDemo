# AgileXDemo
AgileX Scout Mini autonomous inspection 


1. In the docker folder  
docker build -t agilex .

2. To create a container
Docker run --name agilexdemo -p 6080:80 --shm-size=512m agilex:latest

Browse http://localhost:6080/.

