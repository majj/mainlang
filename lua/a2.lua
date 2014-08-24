

local results = {}

function add(a,b)
    
    results.x = a + b
    results.y = a - b
    return a*a + b*b
end


print(add(2,3))
print(results.x)
print(results.y)