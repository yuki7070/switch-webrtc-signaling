FROM golang:1.18-alpine

ENV GO111MODULE=on

WORKDIR /app

COPY ayame/go.mod .
COPY ayame/go.sum .

RUN go mod download

COPY ayame/. .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build 

COPY ayame.yaml ./

ENTRYPOINT ["/app/ayame"]