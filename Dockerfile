FROM 486726484754.dkr.ecr.us-east-1.amazonaws.com/ubuntu
RUN apt-get update && apt-get upgrade -y
RUN apt-get install apache2 -y
EXPOSE 80
CMD /usr/sbin/apahce2ctl -D FOREGROUND
#this is test
