
use JPGaming
--
INSERT INTO ProductTransaction VALUES
('PT016', 'ST007', 'CU003', 'PR010', '2022-04-29', '3');

select*from ProductTransaction
--
UPDATE ComponentTransaction
SET QuantityOfComponent = 3
WHERE ComponentTransactionID = 'CT013'

Select*from ComponentTransaction
--
INSERT INTO ProductCategory VALUES
('PC011' , 'Mouse Pad')

Select*From ProductCategory
--
INSERT INTO [TransactionDetail] VALUES
('TR026','PT009','PC011')

Select*from TransactionDetail
--
UPDATE Product
SET ProductWeight = 20
Where ProductID = 'PR010'

Select*from Product