FROM node:4.6
EXPOSE 8080
COPY server.js .
CMD node server.js
