FROM mockserver/mockserver:latest

ARG PORT=1080
ENV PORT=${PORT}
EXPOSE ${PORT}

COPY expectations.json /config/expectations.json

# Set both environment variables to ensure compatibility
ENV MOCKSERVER_SERVER_PORT=${PORT}
ENV SERVER_PORT=${PORT}
ENV MOCKSERVER_INITIALIZATION_JSON_PATH=/config/expectations.json

CMD ["-logLevel", "INFO"]
