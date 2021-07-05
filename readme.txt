Task1: Contains log.txt and status.txt files. The status.txt contains the result of executing the git command "git status", and log.txt - contains the logging of actions in the main branch.

Task2: Contains the result of working with the EC2 aws service. 2 instances were created, ssh connection was configured between instances. The index.html file has been created containing information about the version of the web server operating system. An archive with screenshots is also attached.

Task3: Install docker. Write bash script for installing Docker.Downloaded and run docker container "hello world". Used image with html page, edit html page and paste text: Zinchenko Ihor Sandbox 2021. Create Dockerfile for building a docker image. Docker image run web application apache2. Web application located inside the docker image.For creating docker image use clear basic images ubuntu 18.04. Add an environment variable "DEVOPS= Zinchenko Ihor to my docker image docker_web. Was pushed my docker image to docker hub (https://hub.docker.com/). Integrated my docker image from DockerHub with my github repository (docker_hub.yaml). Created an automatic delivery to AWS S3 for each push (CI_CD.yaml). Create an automatic deployment on ElasticBeanstalk for each push. (Have errors with followings arguments). Created docker-compose file. Deployed a few docker containers via one docker-compose file. First image - my docker image docker_main. 5 nodes of the first image was runed; second image - java application HelloWorld.java; last image - database image mariadb and adminer for administration db. Second container should be run right after a successful run of a database container. Use env files to configure each service. Screenshots are attached in the IMG folder.

Task4: Three virtual machines were deployed in the cloud. One of them (control_plane) has Ansible installed. Ping pong - Executed the built-in ansible ping command. Ping two other machines. Wrote a playbook to install Docker on two machines and execute it. I also wrote a playbook for installing Docker and LAMP stack with Wordpress in Docker. Screenshots are attached in the IMG folder.

Task5: Jenkins was installed in the Docker container and the necessary plugins were installed to work with Docker.  A Freestyle project is executed, which, as a result, displays the current time on the screen. A Pipeline has been created, which runs the docker ps -a command on the Jenkins Agent running on the Master's Jenkins host. Also create a Pipeline that downloads the code from my git repository and builds a docker image from my Dockerfile. When the Pipeline was created, it passed the variable PASSWORD = QWERTY! encrypted into a docker container. Ansible script has been written that deploys jenkins. Screenshots are attached in the IMG folder.

Task6: I deployed a container with a MySQL database in the cloud and populate the database. Made two tables: Students (ID; Student; StudentId) and Result (ID; StudentId; Task1; Task2; Task3; Task4; Task5). I wrote a request that, by my last name, finds information on completed tasks and displays the result on the screen. Dumped the database, deleted the existing one and restored from the dump. Wrote Ansible role for deploying SQL database. Screenshots are attached in the IMG folder.



 
 






