FROM golang 

ADD . /go/src/treinamento-docker/golang-api/
COPY . /go/src/treinamento-docker/golang-api/

RUN go get github.com/gorilla/mux

ENTRYPOINT [ "go run /go/src/treinamento-docker" ]