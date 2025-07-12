FROM ubuntu:22.04
RUN apt update && apt install -y nginx python3 python3-pip
WORKDIR /tmp/
VOLUME /tmp/
COPY  prodrepo/  /tmp/
COPY nginx.conf /etc/nginx/nginx.conf
COPY default /etc/nginx/sites-available/
RUN pip3 install --no-cache-dir -r requirements.txt

#EXPOSE 80 8083

#CMD ["nginx" , "-g" , "daemon off;"]

CMD ["bash", "-c", "nginx -g 'daemon off;' & gunicorn -w 4 -b 0.0.0.0:8083 backend:app"  ]

