FROM consul:1.12.0

WORKDIR /

COPY docker-entrypoint .

RUN chmod +x ./docker-entrypoint

ENTRYPOINT ["./docker-entrypoint"]