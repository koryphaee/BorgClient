FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y borgbackup cifs-utils tmux &&\
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN mkdir -p /mnt/backup
ENTRYPOINT ["tail", "-f", "/dev/null"]