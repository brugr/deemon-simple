FROM alpine:latest

RUN apk add --update --no-cache python3 gcc musl-dev bash
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip deemon

RUN mkdir /config /deemix /downloads /import /root/.config && \
ln -s /config /root/.config/deemon && ln -s /deemix /root/.config/deemix

ENV SLEEP_TIME=1h

COPY run.sh /run.sh

VOLUME /config /downloads /import /deemix

CMD ["bash", "-c", "/run.sh"]