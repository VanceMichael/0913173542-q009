FROM golang:1.23-alpine
WORKDIR /app
ENV GOPROXY=https://proxy.golang.com.cn,direct
COPY go.mod .
RUN go mod download
COPY . .
RUN go build -o service .
EXPOSE 8080
CMD ["./service"]
