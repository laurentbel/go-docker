FROM golang:1.19-alpine

WORKDIR /app
COPY src/go.mod src/hello.go ./
RUN go build .

CMD [ "/app/hello" ]