# Use the tiryoh/ros-desktop-vnc:melodic as the base image
FROM tiryoh/ros-desktop-vnc:melodic

# Arguments for platform and architecture
ARG TARGETPLATFORM
ARG TARGETARCH

# Upgrade OS and clean up unnecessary files
RUN apt-get update -q && \
    DEBIAN_FRONTEND=noninteractive apt-get upgrade -y && \
    apt-get autoclean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*


#Copy AgileX demo files
RUN mkdir -p /home/ubuntu/catkin_ws
COPY ./catkin_ws/ /home/ubuntu/catkin_ws/



