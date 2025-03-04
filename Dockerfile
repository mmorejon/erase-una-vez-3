# golang alpine
FROM golang:1.24.0-alpine AS builder
# Create workspace
WORKDIR /opt/app/
COPY go.mod .
# fetch dependancies
RUN go mod download
RUN go mod verify
# copy the source code as the last step
COPY . .
# build the binary
RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-w -s" -a -installsuffix cgo -o /go/bin/erase-una-vez-3 .

# build a small image
FROM alpine:3.21.3
LABEL language="golang"
LABEL org.opencontainers.image.source="https://github.com/mmorejon/erase-una-vez-3"
# copy the static executable
COPY --from=builder /go/bin/erase-una-vez-3 /usr/local/bin/erase-una-vez-3
# run app
ENTRYPOINT ["erase-una-vez-3"]
