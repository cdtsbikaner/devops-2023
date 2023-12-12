FROM centos:7
MAINTAINER "user1 | info@gmai.com"
RUN yum install httpd netstat wget -y
COPY ./index.html  /var/www/html
WORKDIR /var/www/html
EXPOSE 80
EXPOSE 443
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
