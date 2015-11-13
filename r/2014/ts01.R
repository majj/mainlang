

df <- ts(1:12, start=c(2014,1), frequency=12)

df

v <- c(1:9)

w <- sapply(v, function(i){i*i})

w

(function(i){print(i*i)})(19)