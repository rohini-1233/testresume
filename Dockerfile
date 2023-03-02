FROM centos/httpd-24-centos7
LABEL NAME="ruhi"
LABEL EMAIL="ruhi@gmail.com"
RUN yum -y update
RUN yum install httpd -y 
COPY source/ /var/www/html
CMD  ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
