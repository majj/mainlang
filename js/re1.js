

sql = "Select \n 1 \nfrom Table1 where id = (select 1 from tab2)"

ct = sql.replace(/select\s+(.*?)\s+from\s+/ig, "\select count(1) as ct from ");


var abc = "abc1"

try{
    
if (sql == ct){
    
  throw("error, abc")  
}

}catch(err){
  
console.log("in catch:")    
    
}
finally{
    
  console.log("finally #{abc}")
    
}



console.log("==================");
console.log(sql);
console.log("==================");
console.log(ct); 
console.log("==================");