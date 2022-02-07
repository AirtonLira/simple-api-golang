FROM golang 

ADD . /go/src/github.com/AirtonLira/simple-api-golang/
COPY . /go/src/github.com/AirtonLira/simple-api-golang/

WORKDIR /go/src/github.com/AirtonLira/simple-api-golang

RUN go mod init github.com/AirtonLira/simple-api-golang
RUN go get github.com/gorilla/mux

ENTRYPOINT [ "go run /go/src/github.com/AirtonLira/simple-api-golang/" ]

EXPOSE 3550