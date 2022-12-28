FROM python:slim

COPY run.sh /run.sh
COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache -r requirements.txt && \
    rm -v /requirements.txt && \
    mkdir /config /deemix /downloads /root/.config && \
    ln -s /config /root/.config/deemon && ln -s /deemix /root/.config/deemix

ENV SLEEP_TIME=24h

VOLUME /config /downloads /deemix

CMD ["bash", "-c", "/run.sh"]