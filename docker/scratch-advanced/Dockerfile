FROM golang:1.19-bullseye as build
WORKDIR /app
COPY src/go.mod src/hello.go ./
RUN CGO_ENABLED=0 go build

FROM scratch
COPY --from=build /usr/share/zoneinfo /usr/share/zoneinfo
COPY --from=build /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=build /app/hello /app/
CMD [ "/app/hello" ]