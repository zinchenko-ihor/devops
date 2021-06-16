Task1: Contains log.txt and status.txt files. The status.txt contains the result of executing the git command "git status", and log.txt - contains the logging of actions in the main branch.
Task2: Contains the result of working with the EC2 aws service. 2 instances were created, ssh connection was configured between instances. The index.html file has been created containing information about the version of the web server operating system. An archive with screenshots is also attached.
Task3:
  Was able to fulfill:
    1. Install docker. Write bash script for installing Docker. 
    2. Downloaded and run docker container "hello world". Used image with html page, edit html page and paste text: Zinchenko Ihor Sandbox 2021.
    3. Create Dockerfile for building a docker image. Docker image run web application apache2. Web application located inside the docker image.For creating docker image use clear        basic images ubuntu 18.04. Add an environment variable "DEVOPS= Zinchenko Ihor to my docker image docker_web.
    4. Was pushed my docker image to docker hub (https://hub.docker.com/). Integrated my docker image from DockerHub with my github repository (docker_hub.yaml). Created an              automatic delivery to AWS S3 for each push (CI_CD.yaml).
    5. Created docker-compose file. Deployed a few docker containers via one docker-compose file. First image - my docker image docker_web. 5 nodes of the first image was runed;
       second image - java application HelloWorld.java; last image - database image mariadb and adminer for administration db.
    Screenshots are attached in the IMG folder.
    
   Сould not fulfill:
    3. Print environment variable with the value on a web page (if environment variable changed after container restart - the web page must be updated with a new value).
    4. Create an automatic deployment on ElasticBeanstalk for each push. Have errors with environment variable.
    5. Second container should be run right after a successful run of a database container. (I don't know how to implement this). Use env files to configure each service.






