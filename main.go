package main

import (
	"encoding/json"
	"fmt"
	"log"
	"net/http"

	"github.com/gorilla/mux"
)

type Pessoa struct {
	Name string
}

var pessoas = []Pessoa{
	Pessoa{Name: "Savio"},
	Pessoa{Name: "Raissa"},
	Pessoa{Name: "João"},
	Pessoa{Name: "Thais"},
	Pessoa{Name: "Airton"},
}

func getAll(w http.ResponseWriter, r *http.Request) {
	json.NewEncoder(w).Encode(pessoas)
}

func main() {
	rotas := mux.NewRouter().StrictSlash(true)

	rotas.HandleFunc("/pessoas", getAll).Methods("GET")

	var port = ":3550"
	fmt.Println("Executando serviço na porta:", port)

	err := http.ListenAndServe(port, rotas)
	if err != nil {
		log.Fatal(err)
	}
}
