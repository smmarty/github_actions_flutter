FROM ubuntu:latest

ARG FILE_PATH=$SOURCE_FILE_PATH
ARG FILE_NAME=$SOURCE_FILE_NAME


RUN apt-get update && \
    apt-get install --assume-yes wget grep jq

RUN wget https://dl.min.io/client/mc/release/linux-amd64/mc \
    && chmod +x mc \
    && mv mc /usr/local/bin/ \
    && mc --help

COPY entrypoint.sh /entrypoint.sh

COPY $FILE_PATH /${FILE_NAME}

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]