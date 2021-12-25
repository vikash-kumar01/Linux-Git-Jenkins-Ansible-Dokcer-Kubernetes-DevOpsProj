FROM  centos:latest
MAINTAINER vikashashoke@gmail.com
RUN yum install -y httpd \
 zip\
 unzip
 ADD https://www.free-css.com/assets/files/free-css-templates/download/page263/kanun.zip /var/www/html/
 WORKDIR /var/www/html/
 RUN unzip kanun.zip
 RUN cp -rvf kanun/* .
 RUN rm -rf kanun kanun.zip
 CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
 EXPOSE 80
 
# https://www.free-css.com/assets/files/free-css-templates/download/page263/kanun.zip
# FROM  centos:latest
# MAINTAINER vikashashoke@gmail.com
# RUN yum install -y httpd \
#  zip\
#  unzip
#  ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip /var/www/html/
#  WORKDIR /var/www/html/
#  RUN unzip shine.zip
#  RUN cp -rvf shine/* .
#  RUN rm -rf shine shine.zip
#  CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
#  EXPOSE 80
