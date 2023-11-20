FROM alpine:3

# Install sudo and bash
RUN apk add --no-cache sudo bash sed

# Add build argument for username
# You can change the UNAME value to any name you like, but it needs to be in lowercase
ARG UNAME=firas
ENV UNAME=${UNAME}

# Copy the setup script and mock_gcc script to the container
COPY env_setup.sh /
COPY gcc.sh /

# Execute the setup script
RUN chmod +x /env_setup.sh
RUN chmod +x /gcc.sh
RUN /env_setup.sh

# Switch to user ${USERNAME}
USER ${UNAME}
WORKDIR /home/${UNAME}
