FROM golang:1.19-alpine as build
WORKDIR /app
COPY src/go.mod src/hello.go ./
RUN go build

FROM gcr.io/distroless/static-debian11
COPY --from=build /app/hello /app/
CMD [ "/app/hello" ]