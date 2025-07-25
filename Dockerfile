FROM alpine:latest
LABEL MAINTAINER="https://github.com/SamSifisoMndebele/samphisher"
WORKDIR /samphisher/
ADD . /samphisher
RUN apk add --no-cache bash ncurses curl unzip wget php 
CMD "./samphisher.sh"
