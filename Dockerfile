FROM node:4.6
COPY server.js .
EXPOSE 80
CMD node server.js
