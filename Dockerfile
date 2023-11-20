FROM debian:latest

ARG NAME=firas

# Install sudo, bash, and other essentials
RUN apt-get update && apt-get install -y sudo bash

# Copy the setup script and mock_gcc script to the container
COPY env_setup.sh /
COPY gcc.sh /

# Execute the setup script
RUN chmod +x /env_setup.sh
RUN chmod +x /gcc.sh
RUN /env_setup.sh

# Switch to user ${USERNAME}
USER ${NAME}
WORKDIR /home/${NAME}
