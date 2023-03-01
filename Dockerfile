FROM ubuntu:focal

RUN apt update \
    && apt install -q -y cron nano pip \
    && pip install b2

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

COPY sync.bash /
RUN chmod +x /sync.bash

COPY sync-cron /etc/cron.d/sync-cron
RUN chmod 0644 /etc/cron.d/sync-cron \
    && crontab /etc/cron.d/sync-cron

RUN touch /var/log/cron.log

ENTRYPOINT [ "/entrypoint.sh" ]
