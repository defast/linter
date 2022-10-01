FROM golang:1.19-alpine

ENV ENTRYPOINT_CMD="noverify -stubs-dir=/root/phpstorm-stubs -cache-dir=/tmp/cache/noverify /project"

RUN apk update && apk --update add \
    git

RUN go install github.com/VKCOM/noverify@latest

RUN mkdir /phplint && cd /phplint

COPY "entrypoint.sh" "/entrypoint.sh"

RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]