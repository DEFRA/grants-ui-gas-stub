FROM mockserver/mockserver:latest
EXPOSE 1080
COPY expectations.json /config/expectations.json
ENV MOCKSERVER_INITIALIZATION_JSON_PATH=/config/expectations.json
CMD ["-serverPort", "1080", "-logLevel", "INFO"]
