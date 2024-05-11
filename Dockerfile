# Use the official golang image t
FROM golang:latest

WORKDIR /app

COPY go.mod ./

RUN if [ -f go.mod ]; then go mod download; fi

COPY . .

RUN go build -o main .

EXPOSE 8080

CMD ["/app/main"]