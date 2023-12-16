FROM alpine:latest

RUN apt-get update && apt-get install -y minio-client grep

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]