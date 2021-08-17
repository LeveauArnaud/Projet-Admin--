FROM resystit/bind9

RUN apk update && apk add --no-cache curl vim wget nano bash

COPY named.conf /etc/bind/named.conf
COPY m1-3.ephec-ti.be /etc/bind/m1-3.ephec-ti.be

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]