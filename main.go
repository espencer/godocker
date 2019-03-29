package main

import (
	"flag"
	"fmt"
	"log"
	"net/http"
)

func main() {

	addr := flag.String("addr", ":8080", "Listen addr")
	flag.Parse()

	log.Printf("Listening on %s\n", *addr)

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Hello workd!")
	})

	log.Fatal("Error starting godocker", http.ListenAndServe(*addr, nil))
}
