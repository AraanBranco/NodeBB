FROM node:4-onbuild

RUN mkdir -p /code/tmp

WORKDIR /code

COPY ./package.json /code/package.json

RUN npm set progress=false

RUN npm install

RUN node app --setup

EXPOSE 4567

CMD ['node', 'app.js']