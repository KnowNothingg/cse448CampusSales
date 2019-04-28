CREATE TABLE [dbo].[Rating]
(
	[OrderID] INT NOT NULL , 
    [BuyerID] INT NOT NULL, 
    [SellerID] INT NOT NULL, 
    [Rating] NUMERIC NOT NULL, 
    [Newness] INT NOT NULL, 
    [Comments] TEXT NOT NULL,
	[RatingID] INT NOT NULL PRIMARY KEY, 
	FOREIGN KEY (BuyerID) REFERENCES dbo.[User](UserID),
    FOREIGN KEY (SellerID) REFERENCES dbo.[User](UserID),
	FOREIGN KEY (OrderID) REFERENCES dbo.[Order](OrderID)
);
