FROM mockserver/mockserver:latest

ARG PORT
ENV PORT=${PORT}
EXPOSE ${PORT}

COPY expectations.json /config/expectations.json

ENV MOCKSERVER_SERVER_PORT=${PORT}
ENV MOCKSERVER_INITIALIZATION_JSON_PATH=/config/expectations.json

CMD ["-logLevel", "INFO"]
