CREATE TABLE dbo.Product
	(
	ProductId int NOT NULL,
	Name nchar(20) NOT NULL,
	Description nchar(40) NOT NULL
	PRIMARY KEY (ProductId),
	)  
GO

select *from Product

INSERT INTO Product VALUES (1, 'Smart Watch', 'Apple Smart watch' )

Insert into Orders values(1,101,'Order for smart watch1',1)
Insert into Orders values(2,102,'Order for smart watch2',1)

CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
	Description nvarchar(40) not null,
    ProductId int,
    PRIMARY KEY (OrderID),
    CONSTRAINT FK_PersonOrder FOREIGN KEY (ProductId)
    REFERENCES Product(ProductId)
);