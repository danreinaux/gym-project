
library.packages("RMySQL")
library(RMySQL)

career <- 'dreinaux'
pass <- 'edmath16'
name <- 'dreinaux'
purdue <- 'mydb.itap.purdue.edu'
mydb <- dbConnect(MySQL(), user = career, password = pass, dbname = name, host = purdue)
on.exit(dbDisconnect(mydb))
library(rjson)
fromJSON(readLines("http://api.hostip.info/get_json.php", warn=F))$ip

sql <- "INSERT INTO Attend (CustomerID, ClassID) VALUES (00044, 04)"
dbSendQuery(mydb, sql)


sql_b1 <- "SELECT Customers.Fname AS FirstName, Customers.Lname AS LastName, Orders.PaymentDay AS PaymentDay FROM Customers, Orders WHERE Customers.CustomerID=Orders.CustomerID AND Customers.gender='Female'"
sql_b2 <- "SELECT Fname, Lname FROM Customers, Attend, Classes WHERE Customers.CustomerID=Attend.CustomerID AND Attend.ClassID=Classes.ClassID AND Classes.name='Boxing'"
sql_c1 <- "SELECT Classes.ClassID, Classes.name AS ClassName, COUNT(Attend.ClassID) AS NumberCustomers FROM Classes, Attend WHERE Attend.ClassID=Classes.ClassID GROUP BY Attend.ClassID HAVING NumberCustomers >= 2 ORDER BY NumberCustomers DESC"
sql_c2 <- "SELECT Memberships.type AS type, COUNT(Memberships.type) AS Num, Customers.gender AS gender FROM Customers, Orders, Memberships WHERE Customers.CustomerID=Orders.CustomerID AND Orders.MembershipID=Memberships.MembershipID GROUP BY type HAVING Customers.gender='Male'"
sql_d1 <- "SELECT Memberships.type, Memberships.PricePerMonth, Orders.OrderDay, Orders.PaymentDay FROM Memberships INNER JOIN Orders ON Memberships.MembershipID=Orders.MembershipID"
sql_d2 <- "SELECT Customers.Fname, Customers.Lname, Customers.gender, Orders.OrderDay FROM Customers INNER JOIN Orders ON Customers.CustomerID=Orders.CustomerID"
sql_e1 <- "SELECT Fname, Lname, DATEDIFF('2020-03-28', Customers.BirthDay)/365.25 AS Age FROM Customers WHERE DATEDIFF('2020-03-28', Customers.BirthDay)/365.25 > (SELECT AVG(DATEDIFF('2020-03-28', Customers.BirthDay)/365.25) AS age FROM Customers)"
sql_e2 <- "SELECT Fname, Lname, gender, Orders.PaymentDay AS PaymentDay FROM Orders, Customers WHERE Customers.CustomerID=Orders.CustomerID AND Orders.PaymentDay > (SELECT Orders.PaymentDay FROM Orders WHERE Orders.CustomerID=00025)"


resultest <- dbSendQuery(mydb, sqltest)
datatest <- fetch(resultest, n=-1)


result_b1 <- dbSendQuery(mydb, sql_b1)
data_b1 <- fetch(result_b1, n=-1)
result_b2 <- dbSendQuery(mydb, sql_b2)
data_b2 <- fetch(result_b2, n=-1)
result_c1<- dbSendQuery(mydb, sql_c1)
data_c1 <- fetch(result_c1, n=-1)
result_c2 <- dbSendQuery(mydb, sql_c2)
data_c2 <- fetch(result_c2, n=-1)
result_d1<- dbSendQuery(mydb, sql_d1)
data_d1 <- fetch(result_d1, n=-1)
result_d2 <- dbSendQuery(mydb, sql_d2)
data_d2 <- fetch(result_d2, n=-1)
result_e1 <- dbSendQuery(mydb, sql_e1)
data_e1 <- fetch(result_e1, n=-1)
result_e2 <- dbSendQuery(mydb, sql_e2)
data_e2 <- fetch(result_e2, n=-1)


plot_b <- barplot(height=data_b1$PaymentDay, names.arg=data_b1$FirstName, las=2, space=0.5, main="Bar Plot showing the membership payment day 
for all of the female customers", ylab="Payment Day", ylim=c(0,30))
plot_c <- barplot(height=data_c1$NumberCustomers, names.arg=data_c1$ClassName, las=2, main="Number of Customers of all the classes that are
being attended by more than 1 customer", ylab="Number of Customers")
plot_e <- barplot(height=data_e1$Age, names.arg=data_e1$Fname, las=2, space=0.5, ylab="Age", main="Ages of customers who are older 
than the average customer age", ylim=c(0,90))






















