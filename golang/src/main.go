package main

import (
    "fmt"
    "net/http"
)

func main() {
    InitStore("./store.db")

    http.HandleFunc("/", HelloHandler)
    http.HandleFunc("/greet", GreetHandler)
    http.HandleFunc("/set", SetHandler)
    http.HandleFunc("/get", GetHandler)

    fmt.Println("Starting server at port 8080")
    if err := http.ListenAndServe(":8080", nil); err != nil {
        panic(err)
    }
}