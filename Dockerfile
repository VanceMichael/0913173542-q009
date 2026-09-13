FROM golang:1.22
WORKDIR /app
COPY go.mod .
RUN go mod download
COPY . .
RUN go build -o service .
EXPOSE 8080
CMD ["./service"]
