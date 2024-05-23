**Jenkins Pipeline Explanation:**
=================================
**Git Checkout:**
This stage checks out the code from the specified branch (main) of the GitHub repository (https://github.com/abhilash55513/helloworld.git).

**Maven Build:**
In this stage, Maven is used to clean the project and then build it using the mvn clean install command.

**Docker Build:**
The Docker Build stage creates a Docker image tagged as helloworld:v1 using the Dockerfile located in the ${WORKSPACE} directory, which is typically the root directory of the project.

**Docker Deploy:**
This stage deploys the Docker image helloworld:v1 as a container.
It first removes any existing containers associated with the helloworld:v1 image using docker rm -f $(docker ps -a -q).
Then, it runs a new container in detached mode (-dt) with port mapping from host 9090 to container 8080.


**Prerequisites:**
Jenkins installed and configured.
Docker installed and running.

**Instructions:**
Clone Repository: git clone https://github.com/abhilash55513/helloworld.git

**Configure Jenkins Pipeline:**
Set up a new pipeline job in Jenkins.
Configure the pipeline script to use the Jenkinsfile from the cloned repository.

**Run the Pipeline:**
Any PR raise against to MAIN branch it will Trigger the Jenkins pipeline to execute.
It will perform the following steps:
Check out the code from the specified branch.
Build the project using Maven.
Build the Docker image.
Deploy the Docker container.

**Access the Application:**
Once the pipeline execution is successful, you can access the application at http://localhost:9090.
Note:

Ensure that port 9090 is not already in use by another application on your host machine.
