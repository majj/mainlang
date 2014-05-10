package main

import (
	"fmt"
	"github.com/julienschmidt/httprouter"

	//  "database/sql"
	pgsql "github.com/lxn/go-pgsql"

	"log"
	"net/http"
	//  "strings"
)

func Query ()string {

	//db, err := sql.Open("postgres", "dbname=postgres user=postgres password=py03thon port=6432")
	conn, err := pgsql.Connect("dbname=maboss user=mabotech password=mabouser port=6432", pgsql.LogError)

	if err != nil {
		log.Fatal(err)
	}

	defer conn.Close()

	//var msg string

	rs, err := conn.Query("SELECT * from now()")

	if err != nil {
		log.Fatal(err)
	}

	hasRow, err := rs.FetchNext()

	if hasRow {
        s,_,_:= rs.String(0)
        //log.Println(t)
        //log.Println(e)
		//log.Println(s)
        
        return s
	}

    
        return  ""
    
}

func Index(w http.ResponseWriter, r *http.Request, _ map[string]string) {

	var s  string = Query()
   log.Println(s)
	log.Println("Index")
	fmt.Fprint(w, "Welcome!\n")
}

func Hello(w http.ResponseWriter, r *http.Request, vars map[string]string) {

	log.Println("Hello")
	fmt.Fprintf(w, "hello, %s!\n", vars["name"])
}

func main() {

	router := httprouter.New()

	router.GET("/", Index)
	router.GET("/hello/:name", Hello)
    
    log.Println(">Listen on 6220")
    
    //Query()
    
    var s  string = Query()
   log.Println(s)
    
	//log.Fatal(http.ListenAndServe(":6220", router))
}
