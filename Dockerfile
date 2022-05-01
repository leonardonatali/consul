FROM consul:1.12.0

WORKDIR /

COPY /docker-entrypoint .

RUN chmod +x ./docker-entrypoint

RUN apk -U add bind-tools

ENTRYPOINT ["./docker-entrypoint"]