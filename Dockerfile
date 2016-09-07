FROM node:4-onbuild

RUN npm set progress=false

RUN node app --setup

EXPOSE 4567

CMD ['node', 'app.js']