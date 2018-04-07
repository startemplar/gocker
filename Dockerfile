FROM golang:1.10

ARG USER
ARG UID

RUN useradd $USER -o -u $UID

RUN chown -R $USER /go

USER $USER

WORKDIR /go/src/app
