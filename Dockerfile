FROM 486726484754.dkr.ecr.us-east-1.amazonaws.com/ubuntu
COPY server.js .
EXPOSE 80
CMD node server.js
#this is test
