FROM golang:1.24.4 AS builder
WORKDIR /app
RUN apt-get update && apt-get install -y ca-certificates
COPY . .
# RUN go mod vendor
RUN go build -mod=vendor -o main ./cmd
FROM debian:bookworm-slim
WORKDIR /app
RUN apt-get update && apt-get install -y ca-certificates
COPY --from=builder /app/main .
COPY ./credentials.json .
COPY ./druid-demo.log .
EXPOSE 8080
CMD ["./main"]

