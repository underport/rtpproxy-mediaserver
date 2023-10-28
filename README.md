# RTPProxy Media Server

Docker RTPProxy Media Server


### Uso con Docker Compose

```YAML
version: "3"

services:
  rtpproxy:
    image: pkecastillo/rtpproxy-mediaserver
    hostname: rtpproxy
    expose:
      - "22222/udp"
    # ports:
    #   - "65000-65100/udp:65000-65100/udp"
    command: rtpproxy -F -f -s udp:0.0.0.0:22222 -l PUBLIC_IP -m 10000 -M 20000
```

__Cambiar la var Public_IP por el valor correspondiente de IP__