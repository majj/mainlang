package main

import (
    "fmt"
    "github.com/julienschmidt/httprouter"
    "net/http"
    "log"
)

func Log(func_name String){

    log.PrintLn(func_name)
}


func Index(w http.ResponseWriter, r *http.Request, _ map[string]string) {

    log.PrintLn("Index")
    fmt.Fprint(w, "Welcome!\n")
}

func Hello(w http.ResponseWriter, r *http.Request, vars map[string]string) {
    log.PrintLn("Hello")
    fmt.Fprintf(w, "hello, %s!\n", vars["name"])
}

func main() {
    router := httprouter.New()
    router.GET("/", Index)
    router.GET("/hello/:name", Hello)

    log.Fatal(http.ListenAndServe(":12345", router))
}