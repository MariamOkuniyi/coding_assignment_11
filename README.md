# Coding Assignment 11 - Docker File

**Student:** Mariam Okuniyi
**Course:** WEBD-3012 - Business Systems Build and Testing
**Assignment:** Assignment 11 - Docker File

## Overview

This project demonstrates how to set up a React development environment using a Docker container.

The application was created using Create React App and displays the following heading:

```html
<h1>Codin 1</h1>
```

The React application runs inside a Docker container and can be accessed through port `7775` on localhost.

## Project Requirements

The project uses the following Docker configuration:

- **Docker Image:** `coding_assignment_11`
- **Container Name:** `okuniyi_mariam_coding_assignment11`
- **Docker Working Directory:** `/okuniyi_mariam_site`
- **React Application Port:** `3000`
- **Localhost Port:** `7775`
- **Application URL:** `http://localhost:7775`

## Prerequisites

Before running this application, ensure the following are installed and running:

- Docker Desktop
- WSL 2
- Node.js and npm
- Git

Docker Desktop must also have WSL integration enabled when running the Docker commands from WSL.

## Dockerfile Configuration

The Dockerfile uses Node.js 20 as the base image.

```dockerfile
FROM node:20

WORKDIR /okuniyi_mariam_site

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
```

### Dockerfile Explanation

`FROM node:20` uses Node.js 20 as the base image for the application.

`WORKDIR /okuniyi_mariam_site` creates and sets the required working directory inside the Docker container.

`COPY package*.json ./` copies the package files into the working directory.

`RUN npm install` installs the dependencies required by the React application.

`COPY . .` copies the remaining project files into the Docker container.

`EXPOSE 3000` identifies port 3000 as the port used by the React development server inside the container.

`CMD ["npm", "start"]` starts the React application when the container runs.

## Build the Docker Image

From the root directory of the project, run:

```bash
docker build -t coding_assignment_11 .
```

This builds the Docker image using the instructions contained in the Dockerfile.

## Run the Docker Container

After the image has been successfully built, run:

```bash
docker run -d --name okuniyi_mariam_coding_assignment11 -p 7775:3000 coding_assignment_11
```

The command:

- Runs the container in detached mode using `-d`.
- Names the container `okuniyi_mariam_coding_assignment11`.
- Maps port `7775` on the host computer to port `3000` inside the Docker container.
- Uses the `coding_assignment_11` Docker image.

## Verify the Container

To confirm that the container is running, use:

```bash
docker ps
```

The container should appear with the name:

```text
okuniyi_mariam_coding_assignment11
```

The port mapping should show that localhost port `7775` is mapped to container port `3000`.

## Access the Application

Once the container is running, open a web browser and visit:

```text
http://localhost:7775
```

The browser should display:

# Codin 1

This confirms that the React application is running successfully inside the Docker container.

## Stop the Container

To stop the running container, use:

```bash
docker stop okuniyi_mariam_coding_assignment11
```

## Start the Container Again

To start the existing container again, use:

```bash
docker start okuniyi_mariam_coding_assignment11
```

The application will then be available again at:

```text
http://localhost:7775

```
Hello World: