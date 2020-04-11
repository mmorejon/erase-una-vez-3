# golang alpine 1.13.5-alpine
FROM golang:1.13.5-alpine AS builder
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
FROM alpine:3.11.3
LABEL language="golang"
# copy the static executable
COPY --from=builder /go/bin/erase-una-vez-3 /go/bin/erase-una-vez-3
# run app
ENTRYPOINT ["/go/bin/erase-una-vez-3"]