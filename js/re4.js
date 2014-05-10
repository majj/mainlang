

var str = "select * from tab where id = @{id} and name = @{name}  or id = @{id}";

// parameters
var res = str.match(/@{\w+}/g);
for(i=0; i < res.length; i++){
    res[i] = res[i].replace(/@|{|}/g,'')
}

//parameter set

console.log(res)

var v = res.sort().filter(function(el,i,a){if(i==a.indexOf(el))return 1;return 0})

//
console.log(v)

t = {"station":"TestZone2_TC1","active":1}

for( k in t){
    
    console.log(k)
    
}