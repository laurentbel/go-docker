FROM golang:1.19-alpine as build
WORKDIR /app
COPY src/go.mod src/hello.go ./
RUN go build

FROM busybox
COPY --from=build /app/hello /app/
CMD [ "/app/hello" ]