FROM httpd:2.4

RUN apt-get update
RUN apt-get install apt-transport-https
RUN apt-get install -y git
RUN git clone https://github.com/rogerio-dx4all/podportal.git
RUN cp -r podportal/* /usr/local/apache2/htdocs/
RUN ls /usr/local/apache2/htdocs/
WORKDIR /usr/local/apache2/htdocs/

EXPOSE 80