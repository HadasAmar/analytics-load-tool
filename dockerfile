FROM golang:1.24.4 AS builder
WORKDIR /app
COPY . .
RUN go build -o loadtool ./cmd/main.go

FROM gcr.io/distroless/base
WORKDIR /app
COPY --from=builder /app/loadtool .
COPY druid-demo.log .
COPY credentials.json .

CMD ["/app/loadtool", "./druid-demo.log", "My_Try.loadtool_logs"]
