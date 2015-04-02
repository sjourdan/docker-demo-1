# Version: 0.0.1
FROM ubuntu:14.04
MAINTAINER Stephane Jourdan "fasten@fastmail.fm"
ENV REFRESHED_AT 2015-04-02
RUN apt-get update
RUN apt-get install -y nginx
RUN echo 'Hi, I am running in your container' > /usr/share/nginx/html/index.html
# ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-h"]
EXPOSE 80
