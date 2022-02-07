FROM golang 

ADD . /go/src/github.com/AirtonLira/simple-api-golang/
COPY . /go/src/github.com/AirtonLira/simple-api-golang/

RUN go get github.com/gorilla/mux
RUN go install github.com/AirtonLira/simple-api-golang@latest

ENTRYPOINT [ "/go/src/simple-api-golang" ]

EXPOSE 3550