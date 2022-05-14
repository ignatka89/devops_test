FROM golang:1.13-alpine

RUN apk add --no-cache git

WORKDIR /app/go-app

COPY go/go.mod .
COPY go/go.sum .

RUN go mod download

COPY go/main.go .

RUN go build -o /app/out/go-app .

WORKDIR /app/out/
CMD ["./go-app"]
