FROM golang:1.19-bullseye

WORKDIR /app

COPY src/go.mod src/hello.go ./
RUN go build
RUN rm go.mod hello.go

CMD [ "/app/hello" ]