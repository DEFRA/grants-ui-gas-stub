FROM mockserver/mockserver:latest

ARG PORT
ENV PORT=${PORT}
EXPOSE ${PORT}

COPY expectations.json /config/expectations.json

ENV MOCKSERVER_INITIALIZATION_JSON_PATH=/config/expectations.json

CMD ["-serverPort", "${PORT}", "-logLevel", "INFO"]
