# Working with Docker Images

Docker images are the building blocks of containers. They are lightweight, portable and self-sufficient packages that contain everything needed to run a software application, including the code, runtime, libraries, and system tools. Imagrs are created from a set of instructions known as a Dockerfile, which specifies the environment and configuration for the application.

## Project Tasks

1. Launch an instance and create a Dockerfile

    - a. Launch an ubuntu EC2 instance and connected to it

![ec2-launch](screenshots/1.connect-to-ec2.png)

    - b. Create a dockerfile

    - c. Used the official nginx image as the base image

    - d. Copied the web static page file(index.html) to the appropiate location within the container.

    - e. Exposed the port(80) of the web application.

![dockerfile](screenshots/2.%20dockerfile.png)

2. Build the Docker Image

    - a. Navigated to the directory containing the Dockerfile

    - b. Build the image using the dockerfile

`docker build -t dockerfile .`

![index-file-update](screenshots/4.%20index-echo.png)

![docker-build](screenshots/5.docker-build.png)

3. Run the Docker container

    - a. Update the security group to allow access on port 8080
![security-grp](screenshots/3.%20security-grp.png)

    - b. Run the newly built image

![docker-img](screenshots/6.%20docker-image.png)

![docker-run](screenshots/7.%20docker%20run.png)

![docker-ps](screenshots/9.%20docker-ps.png)

4. Verify in Browser

![browser-proof](screenshots/8.%20webpage-proof.png)

5. Push image to Docker hub

![docker-login](screenshots/10.%20docker-login.png)

![docker-push](screenshots/11.%20docker-push.png)

![hub-proof](screenshots/dockerhub-proof.png)
