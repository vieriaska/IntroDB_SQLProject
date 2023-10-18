Create DATABASE JPGaming
GO
USE JPGaming
GO
-- Staff Information Entity
CREATE TABLE StaffInformation(
	StaffID CHAR(5) PRIMARY KEY CHECK (StaffID LIKE 'ST[0-9][0-9][0-9]') NOT NULL,
	StaffName VARCHAR(255) NOT NULL,
	StaffEmail VARCHAR(255) NOT NULL,
	StaffPhoneNumber VARCHAR(20) NOT NULL,
	StaffDOB DATE NOT NULL,
	StaffGender VARCHAR(6) NOT NULL,
	StaffAddress VARCHAR(255) NOT NULL,
	StaffSalary INT NOT NULL);

-- Customer Entity
CREATE TABLE Customer(
	CustomerID CHAR(5) PRIMARY KEY CHECK (CustomerID LIKE 'CU[0-9][0-9][0-9]') NOT NULL,
	CustomerName VARCHAR(255) NOT NULL,
	CustomerEmail VARCHAR(255) NOT NULL,
	CustomerPhoneNumber VARCHAR(20) NOT NULL,
	CustomerDOB DATE NOT NULL,
	CustomerGender VARCHAR(6) NOT NULL,
	CustomerAddress VARCHAR(255) NOT NULL);

-- Vendor Entity
CREATE TABLE Vendor(
	VendorID CHAR(5) PRIMARY KEY CHECK (VendorID LIKE 'VE[0-9][0-9][0-9]') NOT NULL,
	VendorName VARCHAR(255) NOT NULL,
	VendorEmail VARCHAR(255) NOT NULL,
	VendorPhoneNumber VARCHAR(20) NOT NULL,
	VendorDOB DATE NOT NULL,
	VendorGender VARCHAR(6) NOT NULL,
	VendorAddress VARCHAR(255) NOT NULL);

-- Product Entity
CREATE TABLE Product(
	ProductID CHAR(5) PRIMARY KEY CHECK (ProductID LIKE 'PR[0-9][0-9][0-9]') NOT NULL,
	ProductName VARCHAR(255) NOT NULL,
	ProductDescription VARCHAR(255) NOT NULL,
	ProductWeight INT NOT NULL,
	ProductPrice INT NOT NULL);

-- Product Category Entity
Create TABLE ProductCategory(
	ProductCategoryID CHAR(5) Primary Key CHECK (ProductCategoryID LIKE 'PC[0-9][0-9][0-9]') NOT NULL,
	ProductCategoryName VARCHAR(255) NOT NULL)

	
-- Component Purchased Entity
CREATE TABLE Component(
	ComponentID CHAR(5) PRIMARY KEY CHECK (ComponentID LIKE 'CO[0-9][0-9][0-9]') NOT NULL,
	ComponentName VARCHAR(255) NOT NULL,
	ComponentDescription VARCHAR(255) NOT NULL,
	ComponentPrice INT NOT NULL);

-- Product Transaction Entity
CREATE TABLE ProductTransaction(
	ProductTransactionID CHAR(5) PRIMARY KEY CHECK (ProductTransactionID LIKE 'PT[0-9][0-9][0-9]') NOT NULL,
	StaffID CHAR(5) FOREIGN KEY REFERENCES StaffInformation(StaffID) NOT NULL,
	CustomerID CHAR(5) FOREIGN KEY REFERENCES Customer(CustomerID) NOT NULL,
	ProductID CHAR(5) FOREIGN KEY REFERENCES Product(ProductID) NOT NULL,
	pTransactionDate DATE NOT NULL,
	QuantityOfProduct INT NOT NULL,);

-- Component Transaction Entity
CREATE TABLE ComponentTransaction(
	ComponentTransactionID CHAR(5) PRIMARY KEY CHECK (ComponentTransactionID LIKE 'CT[0-9][0-9][0-9]') NOT NULL,
	StaffID CHAR(5) FOREIGN KEY REFERENCES StaffInformation(StaffID) NOT NULL,
	VendorID CHAR(5) FOREIGN KEY REFERENCES Vendor(VendorID) NOT NULL,
	ComponentID CHAR(5) FOREIGN KEY REFERENCES Component(ComponentID) NOT NULL,
	cTransactionDate DATE NOT NULL,
	QuantityOfComponent INT NOT NULL);

CREATE TABLE TransactionDetail(
TransactionID CHAR (5) PRIMARY KEY CHECK (TransactionID LIKE 'TR[0-9][0-9][0-9]') NOT NULL,
ProductTransactionID CHAR(5) FOREIGN KEY REFERENCES ProductTransaction(ProductTransactionID) NOT NULL,
ProductCategoryID CHAR (5) FOREIGN KEY REFERENCES ProductCategory(ProductCategoryID) NOT NULL
)

-- Constraint •	Customer email must end with “gmail.com” or “yahoo.com” (without quote).
ALTER TABLE Customer
ADD CONSTRAINT CustomerEmail CHECK (CustomerEmail LIKE '%gmail.com' OR CustomerEmail LIKE '%yahoo.com');

-- Constraint •	Customer and staff addresses must have more than 1 word.
ALTER TABLE Customer
ADD CONSTRAINT CustomerAddress CHECK (LEN(CustomerAddress) > 1);

ALTER TABLE StaffInformation
ADD CONSTRAINT StaffAddress CHECK (LEN(StaffAddress) > 1);

-- Constraint •	Customer and vendor names must be more than 3 characters.
ALTER TABLE Customer
ADD CONSTRAINT CustomerName CHECK (LEN(CustomerName) > 3);

ALTER TABLE Vendor
ADD CONSTRAINT VendorName CHECK (LEN(VendorName) > 3);

-- Constraint •	Component and product price must be more than 5000.
ALTER TABLE Component
ADD CONSTRAINT ComponentPrice CHECK (ComponentPrice > 5000);

ALTER TABLE Product
ADD CONSTRAINT ProductPrice CHECK (ProductPrice > 5000);

-- Constraint •	Product transaction and component transaction Quantity must be more than 0.
ALTER TABLE ProductTransaction
ADD CONSTRAINT QuantityOfProduct CHECK(QuantityOfProduct > 0);

ALTER TABLE ComponentTransaction
ADD CONSTRAINT QuantityOfComponent CHECK(QuantityOfComponent > 0);

-- Constraint •	Customer phone must start with “+62 “(without quote).
ALTER TABLE Customer
ADD CONSTRAINT CustomerPhoneNumber CHECK(CustomerPhoneNumber LIKE '+62%');

-- Constraint •	Product weight must be between 1 and 40.
ALTER TABLE Product
ADD CONSTRAINT ProductWeight CHECK(ProductWeight BETWEEN 1 AND 40);




