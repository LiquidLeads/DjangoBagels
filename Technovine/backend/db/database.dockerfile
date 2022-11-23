FROM mysql:latest AS db
LABEL maintainer="rjoubert@nsd.team"

ENV TERM="xterm"
ENV key=value

ENV MySQLdir="/dev/python"
ENV MySQLapp="/dev/python/app"
ENV MySQLscripts="/dev/python/scripts"

RUN \
	mkdir -p -v ${MySQLapp} \
	mkdir -p -v ${MySQLscripts}

WORKDIR ${MySQLscripts}
COPY ./scrips/* .