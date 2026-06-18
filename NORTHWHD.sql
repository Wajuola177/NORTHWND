/*1 The UK sales team is visiting the Seattle office. Write a SQL statement to display the lastname,
firstname, title, country and city of the employees you would now expect to be in Seattle.*/

SELECT LastName, FirstName, Title, Country, City
FROM [dbo].[Employees];

/*2 List the details of all the shippers being used by the company.*/

SELECT *
FROM [dbo].[Shippers];

/*List the names and prices of the ten cheapest products.*/

SELECT *
FROM [dbo].[Products];

SELECT TOP 10 ProductName , UnitPrice
FROM [dbo].[Products] 
ORDER BY UnitPrice ASC;

/*List out the countries of Northwind Trader’s suppliers are based.*/

SELECT *
FROM [dbo].[Suppliers];

SELECT DISTINCT Country
FROM [dbo].[Suppliers]
ORDER BY Country;

/*Get the total value of those units, for each supplier.*/

SELECT
    s.SupplierID,
    s.CompanyName AS SupplierName,
    SUM(p.UnitsInStock * p.UnitPrice) AS TotalStockValue
FROM Suppliers s
JOIN Products p ON s.SupplierID = p.SupplierID
GROUP BY s.SupplierID, s.CompanyName
ORDER BY TotalStockValue DESC;

/*Write a SQL query to display the product name and unit price of the top 3 most expensive
products.*/

SELECT *
 FROM [dbo].[Products];

 SELECT TOP 3 ProductName, UnitPrice
 FROM [dbo].[Products] 
 ORDER BY  ProductName DESC;

 /*Write a query that displays the full name (i.e. include the title of courtesy, last name and first
name), title and hire date of the employees in the employees table with the job title Sales
Representative.*/

SELECT *
FROM [dbo].[Employees];

SELECT
TitleOfCourtesy + ' ' + FirstName + ' ' + LastName AS FullName,
Title AS JobTitle, HireDate
FROM [dbo].[Employees]
WHERE Title = 'Sales Representative';

/*The company wants to determine the top 5 ordered products from the start of business. Write a
SQL statement to display the product name and the product quantity (Use productquantity as
the column alias).*/

