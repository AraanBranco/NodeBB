FROM node:4-onbuild

RUN apk add --no-cache --update alpine-sdk git python && \
    ln -s /usr/include/locale.h /usr/include/xlocale.h

RUN mkdir -p /code/tmp

WORKDIR /code

COPY ./package.json /code/package.json

RUN npm set progress=false

RUN node app --setup

EXPOSE 4567

CMD ['node', 'app.js']