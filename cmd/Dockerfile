FROM golang:1.24.4 AS builder
# הנתיב חייב להתאים ל־go.mod
WORKDIR /go/src/github.com/HadasAmar/analytics-load-tool
# העתק את כל הקבצים
COPY . .
# בנייה עם vendor
RUN go build -mod=vendor -o main ./cmd
# שלב הרצה רזה
FROM debian:bookworm-slim
WORKDIR /app
# העתק את הבינארי מהשלב הקודם
COPY --from=builder /go/src/github.com/HadasAmar/analytics-load-tool/main .
# העתק את קובץ הלוג
COPY generated_druid_logs_final_1000.log .
# העתק את קובץ הקרדנציאל (של Google BigQuery)
COPY credentials.json .
EXPOSE 8080
# הרצת הבינארי
CMD ["./main"]
