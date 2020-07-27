# Gocker

Gocker is a starter project using docker and golang with automatic rebuild in development mode.

*PROJECT NOT MAINTAINED*


## Getting started

### Prerequisites

In order to run this project you need to have Docker > 1.17.05 installed for building the production image.

### Installing
To use this to start your golang project, simply do:
```sh
$> git clone https://github.com/startemplar/gocker
```

#### Development

```
docker build -t backend-api-go:0.0.1 .
```

```
docker run --rm -p 127.0.0.1:3000:3000/tcp backend-api-go:0.0.1
```