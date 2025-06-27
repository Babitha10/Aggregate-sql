create database col7;
use col7;

#Created a Sales Table
CREATE TABLE Sales (ID INT PRIMARY KEY,Region Varchar(20),Product varchar(20),Quantity INT,Price DECIMAL);

#Insert values
INSERT INTO Sales (ID,Region, Product, Quantity, Price) VALUES (1,'North', 'Pen', 10, 5.00),(2,'North', 'Notebook', 15, 10.00),(3,'South', 'Pen', 5, 5.00),
(4,'South', 'Notebook', 8, 10.00),(5,'East', 'Pen', 12, 5.00);

#Use aggregate functions with GROUP BY
SELECT Region, SUM(Quantity) AS Total_Quantity FROM Sales GROUP BY Region;

#Average
SELECT Region, AVG(Price) AS Average_Price FROM Sales GROUP BY Region;

#Count 
SELECT Region, COUNT(*) AS Product_Count FROM Sales GROUP BY Region;

#HAVING
SELECT Region, SUM(Quantity) AS Total_Quantity FROM Sales GROUP BY Region HAVING SUM(Quantity) > 15;

