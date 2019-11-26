FROM local-centos

RUN yum install nginx -y

COPY index.html /var/www/html/

EXPOSE 8081

CMD ["nginx","-g","daemon off;"]
