

String.prototype.format = function()
{
    var args = arguments;
    
    console.log(args)
    
    return this.replace(/\{(\d+)\}/g,              
        function(m,i){
            return args[i];
        });
} 

/*
String.format = function() {
    if( arguments.length == 0 )
        return null;

    var str = arguments[0];
    
    console.log(str)
    
    
    
    for(var i=1;i<arguments.length;i++) {
        console.log(i);
        var re = new RegExp('\\{' + (i-1) + '\\}','gm');
        str = str.replace(re, arguments[i]);
    }
    return str;
}

*/

var a = "I Love {0}, and You Love {1},Where are {0}! {1}";

//console.log(String.format(a, "You","Me"));

console.log(a.format("You0","Me1")); 

//console.log(String.format({"a0":"You0","b0":"Me1"})); 