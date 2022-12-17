FROM ubuntu/nginx
RUN echo "hi ubuntu" > /tmp/tesfile
RUN apt-get update && apt-get upgrade  -y
EXPOSE 80 
