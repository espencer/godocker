FROM golang:1.12.1

COPY . /work
WORKDIR /work
RUN go build -o bin/godocker godocker

FROM scratch
COPY --from=0 /work/bin/godocker /godocker
ENTRYPOINT ["/godocker"]
