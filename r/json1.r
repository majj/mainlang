

library("rjson")

sayHello<-function(name){
    print(paste("Hello",name))
}

sayHello("Foton")

json_data <- fromJSON(paste(readLines("r1.json"), collapse=""))