FROM golang:1.19-alpine

RUN apk update && apk --update add \
    git

RUN go install github.com/VKCOM/noverify@latest

RUN mkdir /phplint && cd /phplint

COPY "entrypoint.sh" "/entrypoint.sh"

RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]