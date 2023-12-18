FROM ubuntu:latest

RUN apt-get update && \
    apt-get install --assume-yes wget grep jq

RUN wget https://dl.min.io/client/mc/release/linux-amd64/mc \
    && chmod +x mc \
    && mv mc /usr/local/bin/ \
    && mc --help

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]