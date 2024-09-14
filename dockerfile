FROM ubuntu:22.04
RUN yes | unminimize
RUN apt-get update && \
    apt-get install -y locales vim tmux less
RUN apt-get install -y nodejs npm curl
RUN npm install n -g && n 16.13.1
RUN npm install --global yarn
WORKDIR /app
