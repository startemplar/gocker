FROM golang:1.12 AS build-env

RUN curl https://glide.sh/get | sh


WORKDIR /go/src/app
COPY glide.yaml /go/src/app
RUN glide install
COPY ./go/src/app .
# RUN go install -v .
RUN go build -o goapp

FROM golang:1.12
WORKDIR /app
COPY --from=build-env /go/src/app/goapp /app/goapp
COPY data.db /app/data.db
RUN chmod -R 777 /app
ENTRYPOINT ["./goapp"]
