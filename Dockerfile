FROM golang:1.12-alpine3.9

ENV ENTRYPOINT_CMD="noverify -stubs-dir=/root/phpstorm-stubs -cache-dir=/tmp/cache/noverify /project"

RUN apk update && apk --update add \
    git

RUN go get -u github.com/VKCOM/noverify

RUN mkdir /phplint && cd /phplint

COPY "entrypoint.sh" "/entrypoint.sh"

RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]