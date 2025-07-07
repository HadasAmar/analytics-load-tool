FROM golang:1.24.4 AS builder

WORKDIR /app

COPY . .

RUN go build -o main ./cmd

# שלב 2
FROM debian:bookworm-slim
WORKDIR /app
COPY --from=builder /app/main .
EXPOSE 8080
CMD ["./main"]
