FROM golang:1.23-alpine
WORKDIR /app
ENV GOPROXY=https://proxy.golang.com.cn,direct
COPY go.mod .
COPY . .
RUN go mod tidy && go build -o service .
EXPOSE 8080
CMD ["./service"]
