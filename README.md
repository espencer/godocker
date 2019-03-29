# GO Docker

Minimal _proof of concept_ Go Docker HTTP Server.

## Building

Binary only:

```sh
go build -o bin/godocker godocker

```

Docker:

```sh
docker build .
```

## Running

```sh
docker run --rm -it -p 8081:8081 godocker -addr :8081
```
