FROM python:3.8-alpine
MAINTAINER Kamil Sindi <kamil@jwplayer.com>

RUN apk add --update-cache \
  git \
  && python3 -m ensurepip \
  && rm -rf /var/cache/apk/*

WORKDIR "/buildkite"

COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt

COPY 

CMD ["python3", "buildpipe"]
