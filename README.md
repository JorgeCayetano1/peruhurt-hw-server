# Hurtworld Server Docker Project

This project provides a Docker setup for deploying a Hurtworld server. Below are the instructions and guidelines for setting up and managing the server.

## Prerequisites

- Docker installed on your machine.
- Basic knowledge of Docker and command line usage.

## Project Structure

```
hurtworld-server
├── docker
│   ├── Dockerfile
│   └── entrypoint.sh
├── .dockerignore
├── .env
└── README.md
```

## Setup Instructions

1. **Clone the Repository**
   Clone this repository to your local machine.

   ```bash
   git clone https://github.com/JorgeCayetano1/peruhurt-hw-server
   cd hurtworld-server
   ```

2. **Configure Environment Variables**
   Edit the `.env` file to set up your server configuration, including any necessary credentials and settings.

3. **Build the Docker Image**
   Navigate to the `docker` directory and build the Docker image using the following command:

   ```bash
   docker build -t hurtworld-server .
   ```

4. **Run the Docker Container**
   Start the Hurtworld server container with the following command:

   ```bash
   docker run -d --env-file .env --name hurtworld-server hurtworld-server
   ```

## Usage Guidelines

- To view logs from the server, use:

  ```bash
  docker logs -f hurtworld-server
  ```

- To stop the server, run:

  ```bash
  docker stop hurtworld-server
  ```

- To remove the container, execute:

  ```bash
  docker rm hurtworld-server
  ```

## Additional Information

For more details on configuring the Hurtworld server, refer to the official documentation or community resources. This setup is designed to simplify the deployment process and ensure a consistent environment for running the server.
