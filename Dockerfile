FROM alpine

RUN apk add git \
        && apk add yarn \
        && git clone https://github.com/dato7898/docker-site.git \
        && cd docker-site \
        && yarn

WORKDIR ./docker-site

CMD yarn start

EXPOSE 3000


