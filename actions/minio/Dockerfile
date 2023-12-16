FROM minio/mc:latest
RUN apt-get install -y grep mlocate
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]