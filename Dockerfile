# Dockerfile (tag: v3)
FROM node:0.12.7
RUN npm install webpack -g && npm install webpack-dev-server -g
WORKDIR /tmp
COPY package.json /tmp/
RUN npm config set registry http://registry.npmjs.org/ && npm install
WORKDIR /shell-chart
COPY . /shell-chart/
RUN cp -a /tmp/node_modules /shell-chart/
RUN webpack
ENV NODE_ENV=production
CMD [ "webpack-dev-server", "--hot", "--inline", "--progress", "--host", "0.0.0.0" ]
