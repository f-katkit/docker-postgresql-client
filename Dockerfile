FROM alpine:latest

RUN apk add --update --no-cache \
  postgresql-client