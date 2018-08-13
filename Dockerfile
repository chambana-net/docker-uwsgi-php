FROM chambana/base:latest

MAINTAINER Josh King <jking@chambana.net>

RUN apt-get -qq update && \
	apt-get install -y --no-install-recommends uwsgi-core/testing uwsgi-plugin-php/testing && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*
