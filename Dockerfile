FROM golang:1.12.1

COPY . /work
WORKDIR /work
RUN CGO_ENABLED=0 go build -o bin/godocker godocker

FROM scratch
COPY --from=0 /work/bin/godocker /godocker
ENTRYPOINT ["/godocker"]
