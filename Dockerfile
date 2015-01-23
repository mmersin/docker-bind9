FROM debian:wheezy

MAINTAINER Mehmet Mersin <mmersin@gmail.com>

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y bind9
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

EXPOSE 53/udp

CMD ["/usr/sbin/named", "-c", "/etc/bind/named.conf", "-g"]
