FROM ubuntu:20.04

RUN apt-get update \
  && apt-get -y install rtpproxy \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD rtpproxy -F -f