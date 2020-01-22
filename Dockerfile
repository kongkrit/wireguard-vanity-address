FROM alpine:latest

RUN apk update
RUN apk add libgcc

#RUN apk add cargo
#RUN cargo install wireguard-vanity-address
#RUN cp /root/.cargo/bin/wireguard-vanity-address /wireguard-vanity-address

COPY wireguard-vanity-address /wireguard-vanity-address
COPY entry.sh /entry.sh
ENV NAME none

CMD ["/bin/ash", "/entry.sh"]

