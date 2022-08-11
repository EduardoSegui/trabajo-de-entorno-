FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y && apt-get install bc -y


ADD ["scripts/", "/usr/src/"]

WORKDIR /usr/src/


ENTRYPOINT ["bash", "menu.sh"]

