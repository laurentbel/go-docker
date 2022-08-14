FROM golang:1.19-alpine as build

WORKDIR /app
COPY src/go.mod src/hello.go ./
RUN go build .

FROM scratch

WORKDIR /app
COPY --from=build /app/hello ./

CMD [ "/app/hello" ]