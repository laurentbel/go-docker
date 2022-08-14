FROM golang:1.19-alpine3.16

WORKDIR /app
COPY src/go.mod src/hello.go ./
RUN go build
RUN rm go.mod hello.go

CMD [ "/app/hello" ]