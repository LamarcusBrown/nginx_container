FROM local-centos

RUN yum install nginx -y

ADD www /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx","-g","daemon off;"]
