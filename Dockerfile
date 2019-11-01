FROM golang

ADD . /prometheus-test
WORKDIR /prometheus-test
RUN CGO_ENABLED=0 go build -mod vendor -o prometheus-test main.go

FROM scratch
COPY --from=0 /prometheus-test/prometheus-test /
ENTRYPOINT [ "/prometheus-test" ]
