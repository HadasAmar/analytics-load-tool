FROM golang:1.20 as builder

WORKDIR /app

COPY go.mod .
COPY go.sum .
RUN go mod download

COPY . .

RUN go build -o app ./cmd/main.go

# שלב ריצה
FROM debian:bullseye-slim

WORKDIR /app

COPY --from=builder /app/app /app/app
COPY --from=builder /app/credentials.json /app/credentials.json
COPY --from=builder /app/Reader/logs.json /app/logs.json

CMD ["/app/app", "/app/logs.json"]

# ניתן להחליף קובצי קלט עם volumes בקוברנטיס
