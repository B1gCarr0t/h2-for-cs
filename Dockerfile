FROM ubuntu:latest
EXPOSE 443
WORKDIR /
USER root

COPY h2 ./h2
COPY cf.yaml ./cf.yaml
COPY h2.crt ./h2.crt
COPY h2.key ./h2.key

RUN chmod +x h2

CMD [ "h2 server","run","-c","cf.yaml" ]
