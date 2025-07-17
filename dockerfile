FROM golang:1.24.4 AS builder
WORKDIR /app

RUN apt-get update && apt-get install -y ca-certificates

COPY . .

# אל תבצע go mod vendor כאן – הוא כבר נוצר מקומית
RUN go build -mod=vendor -o main ./cmd

FROM debian:bookworm-slim
WORKDIR /app

RUN apt-get update && apt-get install -y ca-certificates

COPY --from=builder /app/main .

EXPOSE 8080
CMD ["./main"]
