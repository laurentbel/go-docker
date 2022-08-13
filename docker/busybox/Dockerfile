FROM golang:1.19-alpine as build

WORKDIR /app
COPY go.mod hello.go ./
RUN go build .

FROM busybox

WORKDIR /app
COPY --from=build /app/hello ./

CMD [ "/app/hello" ]