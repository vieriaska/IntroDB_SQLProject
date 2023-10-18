GO
USE JPGaming

--1.	Display CustomerID, CustomerName(obtained from CustomerName in uppercase format), and TotalItemsBought (obtained from the sum of quantity) for every transaction that happens in the year 2021 and done by a customer that is born in 2001.
SELECT mc.CustomerID, [CustomerName] = UPPER(CustomerName), [TotalItemsBought] = SUM(pt.QuantityOfProduct)
FROM Customer mc
JOIN ProductTransaction pt
ON mc.CustomerID = pt.CustomerID
WHERE YEAR(mc.CustomerDOB) = 2001 AND YEAR(pt.pTransactionDate) = 2021
GROUP BY mc.CustomerID, CustomerName

--2.	Display ProductID, ProductName, and ProductCategoryName for every transaction that occurred in the year 2020 and product that is purchased at least in 2 transactions.
SELECT mp.ProductID, ProductName, mpc.ProductCategoryName
FROM TransactionDetail td
JOIN ProductTransaction pt
ON td.ProductTransactionID = pt.ProductTransactionID
JOIN Product mp
ON pt.ProductID = mp.ProductID
JOIN ProductCategory mpc
ON td.ProductCategoryID = mpc.ProductCategoryID
WHERE YEAR(pt.pTransactionDate) = 2020

--3.	Display ProductID, ProductName (obtained from ProductName in uppercase format), Income (obtained from the sum of ProductPrice times quantity), TotalTransaction (obtained from the total number of different products that have been bought) for every product which CategoryName is 'mouse' or 'keyboard' and ProductName contains ‘gaming’, ordered by Income in descending.
SELECT mp.ProductID, [ProductName] = UPPER(mp.ProductName), [Income] = (SUM(mp.ProductPrice * pt.QuantityOfProduct)), [TotalTransaction] = SUM(pt.QuantityOfProduct)
FROM Product mp
JOIN ProductTransaction pt
ON mp.ProductId = pt.ProductID
JOIN TransactionDetail td
ON td.ProductTransactionID = pt.ProductTransactionID
JOIN ProductCategory mpc
ON td.ProductCategoryID = mpc.ProductCategoryID
GROUP BY mp.ProductId, mp.ProductName, mpc.ProductCategoryName
HAVING mpc.ProductCategoryName LIKE 'Mouse' OR mpc.ProductCategoryName LIKE 'Keyboard'
ORDER BY [Income] DESC

--4.	Display StaffID, StaffName, UserName (obtained from Email before ‘@’), TotalTransaction (obtained from the total number of different products sold by staff), MoneySpend (obtained from the sum of MaterialPrice times quantity) for every staff that is male and for every transaction that is done in 2019.
SELECT si.StaffID,
StaffName,
[UserName] = LEFT (StaffEmail,CHARINDEX ('@',StaffEmail)),
[TotalTransaction] =COUNT(QuantityofProduct),[MoneySpend] = SUM (ComponentPrice * QuantityofComponent)
FROM Component co
JOIN componentTransaction ct
ON co.ComponentID = ct.ComponentID
JOIN StaffInformation si
ON ct.StaffID = si.StaffID
JOIN ProductTransaction pt 
ON pt.StaffID = si.StaffID
JOIN Customer c
ON c.CustomerID = pt.CustomerID
WHERE StaffGender = 'Male' AND YEAR(pTransactionDate) = 2019
GROUP BY si.StaffID,StaffName,StaffEmail

--5.	Display VendorNameID (obtained from VendorName and 3 last characters from  VendorID), VendorPhone, YearOfBirth (obtained from the year of VendorDOB), and TransactionCount (obtained from the total number of different components sold by the vendor) for every transaction item that has a quantity of more than 60 and done by the female vendor, ordered by TransactionCount in descending. (alias subquery)
SELECT [VendorNameID] = RIGHT(VendorName,3),
VendorPhoneNumber,
[YearOfBirth] = YEAR(VendorDOB)
FROM Vendor v ,(
	SELECT [TransactionCount] = COUNT(QuantityOfComponent),ct.VendorID
FROM Vendor v
JOIN ComponentTransaction ct
ON v.VendorID = ct.VendorID
WHERE QuantityOfComponent > 60 AND VendorGender = 'Female'
GROUP BY ct.VendorID
) x
WHERE v.VendorID = x.VendorID AND x.[TransactionCount] > 60 -- NOTES: dari DML tidak ada TransactionCount yg lebih dari 60.
ORDER BY [TransactionCount] DESC

/* 6.	Display ComponentID, ComponentKeyword (obtained from getting the first word from the component description) 
for every component that has a price more than the average price and for every transaction that happened in 2020.*/
Select c.ComponentID , [ComponentKeyword] = substring(ComponentDescription, 1, charindex(' ',ComponentDescription))
from Component c join ComponentTransaction ct
on c.ComponentID = ct.ComponentID
where ComponentPrice > (select avg(ComponentPrice) from Component ) and year(cTransactionDate) = '2020'
group by c.ComponentID, substring(ComponentDescription, 1, charindex(' ',ComponentDescription))


/*7	Display ProductIdentifier (obtained from 3 last characters from ProductID and 3 first characters of ProductName), ProductWeight, ProductPrice, TransactionCount (obtained from the total number of different products sold) for every transaction that occurred after 2019 and has TransactionCount more than the average of TransactionCount.
(alias subquery)*/
SELECT
	[ProductIdentifier] = CONCAT(RIGHT(p.ProductID, 3),(LEFT(p.ProductName,3))),
	ProductWeight,
	ProductPrice,
	[TransactionCount] = COUNT(pt.ProductTransactionID)
FROM Product p
JOIN ProductTransaction pt
ON p.ProductID = pt.ProductID
WHERE YEAR(pt.pTransactionDate) > 2019
GROUP BY p.ProductID, p.ProductName, p.ProductWeight, p.ProductPrice

/*8 Display CustomerName, EmailProvider (obtained from CustomerEmail after ‘@’ character), 
TotalQty (obtained from the sum of product quantity the customer has bought)
for every male customer that has TotalQty more than average TotalQty.
(alias subquery) */
SELECT CustomerName , [EmailProvider]  = substring(CustomerEmail,1 + Charindex('@', CustomerEmail),Charindex('.com', CustomerEmail)) ,  [TotalQty] = avg(QuantityofProduct)
from Customer c join ProductTransaction pt
on c.CustomerID = pt.CustomerID
where QuantityofProduct > (select avg(QuantityofProduct) from ProductTransaction)
and CustomerGender = 'Male'

Group By CustomerName, CustomerEmail

-- 9 	Create view StaffCompactView to display StaffName, StaffPhone (obtained from replacing ‘+62’ from StaffPhone by ‘0’), YearOfBirth (obtained from the year of StaffDOB), Earning (obtained from the sum of ProductPrice times quantity), and TotalTransactions (Obtained from total number of different products sold by staff) for every female staff and product with weight more than 0.
GO
CREATE VIEW StaffCompactView
AS
SELECT StaffName,
[StaffPhone] = REPLACE(StaffPhoneNumber,'+62 ',0),
[YearOfBirth] = StaffDOB,
[Earning] = SUM(ProductPrice * QuantityOfProduct),
[TotalTransactions] = COUNT(pt.ProductID)
FROM StaffInformation si
JOIN ProductTransaction pt ON si.StaffID = pt.StaffID
JOIN Product p ON pt.ProductID = p.ProductID
WHERE StaffGender = 'Female' AND ProductWeight >= 0
GROUP BY StaffName,StaffPhoneNumber,StaffDOB

--10.	Create view CustomerFLView to display CustomerID, CustomerName (obtained from CustomerName in a lowercase format), FirstTransaction (obtained from the Customer's first ProductTransactionDate), LastTransaction (obtained from the Customer's last ProductTransactionDate) for every customer that has more than one word in his/her name and that made transaction with staff with salary more than 7000000, ordered by CustomerName ascending.
GO
CREATE VIEW CustomerFLView
AS
SELECT
	c.CustomerID,
	[CustomerName] = LOWER(CustomerName),
	[FirstTransaction] = MIN(pt.pTransactionDate),
	[LastTransaction] = MAX(pt.pTransactionDate)
FROM Customer c
JOIN ProductTransaction pt
ON c.CustomerID = pt.CustomerID
JOIN StaffInformation si
ON pt.StaffID = si.StaffId
GROUP BY c.CustomerID, c.CustomerName