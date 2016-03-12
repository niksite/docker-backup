FROM docker:1.10

RUN apk update \
	&& apk add python py-pip \
	&& pip install docker-py \
	&& mkdir /backups

VOLUME ['/backups']

COPY backup /backup

ENV NIKSITE_BACKUP 1

CMD /backup
