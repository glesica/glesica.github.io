FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y \
	node-typescript \
	pandoc \
	wget \
	&& rm -rf /var/lib/apt/lists/*

VOLUME /data
WORKDIR /data
