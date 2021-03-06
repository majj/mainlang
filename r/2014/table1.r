

a = c(1,1,1,1,1,1,1,2,2,2,2,2,2,2) 
b = c("A","A","A","B","B","B","B","C","C","D","D","D","D","D") 
c = c(60,20,20,80,5,5,5,50,50,25,25,25,20,5) 
dat = data.frame(Group=a, Member=b, Percentage=c) 

table_values = c("2", "4", "2", "1")
table_total = c("A", "B", "C", "D")
tab = data.frame(Type=table_total, Value=table_values)


ggplot(dat, aes(x=Member, y=Percentage)) + 
  geom_bar(stat="identity", position="dodge", fill="white", colour="black") +
  geom_text(aes(x=table_total, label=table_values), y=-2, data=tab)