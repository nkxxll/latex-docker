# This is a Dockerfile created from chatGPT to compile LaTeX documents using latexmk
# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

# change the shell
SHELL ["/bin/bash", "-c"]
# Update package lists and install texlive-full, latexmk, and other necessary packages
RUN apt update && apt install -y \
    texlive-full \
    latexmk \
    biber \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory inside the container
WORKDIR /latex

# Run the container in interactive mode
CMD ["bash"]

# The command to compile the LaTeX template using latexmk can be executed after the container is started interactively
# Mount the shared folder from the host system to /latex in the container using the '-v' option when running the container
