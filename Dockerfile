FROM ubuntu/nginx
RUN echo "hi ubuntu" > /tmp/tesfile
RUN apt-get update && apt-get upgrade  -y
EXPOSE 80
#stage 2
FROM ubuntu
WORKDIR /tmp
RUN echo "hi nike" > /tmp/testfile
ENV myname sofi
COPY testfile1 /tmp
ADD test.tar.gz /tmp
#stage 3
FROM ubuntu
VOLUME ["/data"]
RUN echo "volume data"> /tmp/testvlfile
#stage 4
RUN docker run -td --name jekincont -p 8080:8080 jenkins/jenkins
RUN docker run -td --name webcont -p 80:80 ubuntu 
#stage 5
 
~                         
