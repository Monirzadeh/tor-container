FROM debian

RUN apt update && apt upgrade && apt install -y tor obfs4proxy

EXPOSE 9050
VOLUME /etc/tor /var/lib/tor
CMD ["tor"]
