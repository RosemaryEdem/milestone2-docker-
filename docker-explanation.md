# Dockerfile Instructions Explained

## FROM
FROM python:3.11-slim sets the base image for the 
container. Every Dockerfile must start with FROM. 
It tells Docker what operating system and runtime 
environment to use. Here we use a lightweight Python 
3.11 image.

## WORKDIR
WORKDIR /app sets the working directory inside the 
container. All subsequent commands will run from 
this directory. It keeps files organized inside 
the container.

## COPY
COPY app.py . copies our application file from 
the local machine into the container's working 
directory. Without this the container would have 
no application code to run.

## RUN
RUN echo "Application ready" executes a command 
during the image build process. RUN is used to 
install dependencies, configure the environment
or run setup scripts. It creates a new layer 
in the Docker image.

## CMD
CMD ["python", "app.py"] tells Docker what command 
to run when the container starts. Unlike RUN which 
runs at build time, CMD runs at container start time. 
There should only be one CMD instruction per Dockerfile.
