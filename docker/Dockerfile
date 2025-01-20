# Use the steamcmd image as a parent image
FROM steamcmd/steamcmd:centos-9

# Set environment variables
ARG STEAMAPPID
ARG STEAMAPP
ARG STEAMAPPDIR

ENV STEAMAPPID=${STEAMAPPID}
ENV STEAMAPP=${STEAMAPP}
ENV STEAMAPPDIR=${STEAMAPPDIR}

# Update and install necessary packages
RUN yum update -y && \
    yum install -y glibc libstdc++ && \
    yum install -y glibc.i686 libstdc++.i686

# Install necessary packages
RUN yum clean all

# Create a directory for the Hurtworld server
RUN mkdir -p ${STEAMAPPDIR}

# Install the Hurtworld server
RUN /root/.local/share/Steam/steamcmd/steamcmd.sh +force_install_dir ${STEAMAPPDIR} +login anonymous +app_update ${STEAMAPPID} validate +quit

# Download and install Oxide
ADD https://umod.org/games/hurtworld/download/develop /tmp/oxide.zip
RUN yum install -y unzip && \
    unzip -o /tmp/oxide.zip -d ${STEAMAPPDIR} && \
    rm /tmp/oxide.zip

# Copy plugin configuration files
RUN mkdir -p ${STEAMAPPDIR}/oxide
COPY oxide ${STEAMAPPDIR}/oxide

# Create .txt log files
RUN touch ${STEAMAPPDIR}/gamelog.txt

# Expose the necessary ports
EXPOSE 12871/udp 12881/udp

# Set the entrypoint script
COPY entrypoint.sh ${STEAMAPPDIR}/entrypoint.sh
RUN chmod +x ${STEAMAPPDIR}/entrypoint.sh

# Start the server
ENTRYPOINT ["/home/steam/hurtworld/entrypoint.sh"]