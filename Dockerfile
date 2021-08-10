FROM docker:latest
RUN apk add --no-cache py3-pip python3
RUN apk add --no-cache --virtual build-dependencies python3-dev libffi-dev openssl-dev gcc libc-dev make musl-dev libffi-dev cargo \
  && pip3 install "docker-compose" \
  && apk del build-dependencies
RUN apk add curl
