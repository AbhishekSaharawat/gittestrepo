FROM ubuntu:22.04
RUN apt update && apt install -y nginx python3 python3-pip

RUN pip3 install --no-cache-dir -r requirements.txt 
VOLUME /tmp/
COPY  prodrepo/  /tmp/
WORKDIR /tmp/

CMD ["nginx" , "-g" , "daemon off;"]
