FROM python:slim

RUN pip3 install --no-cache --upgrade deemon && \
mkdir /config /deemix /downloads /root/.config && \
ln -s /config /root/.config/deemon && ln -s /deemix /root/.config/deemix

ENV SLEEP_TIME=24h

COPY run.sh /run.sh

VOLUME /config /downloads /deemix

CMD ["bash", "-c", "/run.sh"]