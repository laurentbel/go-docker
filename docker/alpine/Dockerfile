FROM golang:1.19-alpine

WORKDIR /app
COPY go.mod hello.go ./
RUN go build .

CMD [ "/app/hello" ]