FROM node:alpine
WORKDIR /usr/src/app
RUN npm install -g kong-dashboard
EXPOSE 8080
CMD PORT=8080 kong-dashboard start --kong-url http://marathon-lb.marathon.mesos:10202