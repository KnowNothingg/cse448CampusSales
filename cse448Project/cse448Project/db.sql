USE master
GO

DROP DATABASE IF EXISTS CampusSales
GO

CREATE DATABASE CampusSales
GO

USE CampusSales
GO

CREATE TABLE [dbo].[User] (
    [UserID]   INT          NOT NULL,
    [Name]     VARCHAR (50) NOT NULL,
    [Email]    VARCHAR (50) NOT NULL,
    [Password] VARCHAR (50) NOT NULL,
    [PhoneNum] VARCHAR (20) NOT NULL,
    [Location] TEXT         NULL,
    [Rating]   NUMERIC (18) DEFAULT ((5.0)) NULL,
    PRIMARY KEY CLUSTERED ([UserID] ASC)
);

CREATE TABLE [dbo].[Status] (
    [StatusID] INT          NOT NULL,
    [Status]   VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([StatusID] ASC)
);


CREATE TABLE [dbo].[Category] (
    [CategoryID] INT            NOT NULL,
    [Category]   VARBINARY (50) NOT NULL,
    [isDeleted]  INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([CategoryID] ASC)
);

CREATE TABLE [dbo].[Images] (
    [ImageID]    INT           NOT NULL,
    [originName] VARCHAR (100) NOT NULL,
    [newName]    VARCHAR (50)  NOT NULL,
    [uploadDate] TIME (7)      NOT NULL,
    PRIMARY KEY CLUSTERED ([ImageID] ASC)
);

CREATE TABLE [dbo].[Items] (
    [ItemID]        INT          NOT NULL,
    [Seller_userID] INT          NOT NULL,
    [Name]          VARCHAR (50) NOT NULL,
    [Price]         NUMERIC (18) NOT NULL,
    [Newness]       INT          NOT NULL,
    [CategoryID]    INT          NOT NULL,
    [Description]   TEXT         NOT NULL,
    PRIMARY KEY CLUSTERED ([ItemID] ASC),
    FOREIGN KEY ([CategoryID]) REFERENCES [dbo].[Category] ([CategoryID])
);

CREATE TABLE [dbo].[Order] (
    [OrderID]      INT          NOT NULL,
    [Buyer_userID] INT          NOT NULL,
    [Time]         TIME (7)     NOT NULL,
    [StatusID]     INT          NOT NULL,
    [Payment]      VARCHAR (50) NOT NULL,
    [ItemID]       INT          NOT NULL,
    PRIMARY KEY CLUSTERED ([OrderID] ASC),
    FOREIGN KEY ([Buyer_userID]) REFERENCES [dbo].[User] ([UserID]),
    FOREIGN KEY ([ItemID]) REFERENCES [dbo].[Items] ([ItemID]),
    FOREIGN KEY ([StatusID]) REFERENCES [dbo].[Status] ([StatusID])
);

CREATE TABLE [dbo].[Rating] (
    [OrderID]       INT          NOT NULL,
    [Buyer_UserID]  INT          NOT NULL,
    [Seller_UserID] INT          NOT NULL,
    [Rating]        NUMERIC (18) NOT NULL,
    [Newness]       INT          NOT NULL,
    [Comments]      TEXT         NOT NULL,
    [RatingID]      INT          NOT NULL,
    PRIMARY KEY CLUSTERED ([RatingID] ASC),
    FOREIGN KEY ([Buyer_UserID]) REFERENCES [dbo].[User] ([UserID]),
    FOREIGN KEY ([Seller_UserID]) REFERENCES [dbo].[User] ([UserID]),
    FOREIGN KEY ([OrderID]) REFERENCES [dbo].[Order] ([OrderID])
);




CREATE TABLE [dbo].[Item_Image] (
    [ItemID]  INT NOT NULL,
    [ImageID] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([ItemID] ASC, [ImageID] ASC)
);


