FROM node
RUN mkdir -p /home/app
WORKDIR /home/app
CMD ["node", "server.js"]
