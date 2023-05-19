﻿CREATE TABLE [dbo].[Student]
(
	[ID] INT IDENTITY (1,1) NOT NULL,
	[FirstName] NVARCHAR(50)NOT NULL,
	[LastName] NVARCHAR(50)NOT NULL,
	[BirthDate] DATETIME2(7)NOT NULL CONSTRAINT CK_STUDENT__Birthdate CHECK (BirthDate >= '1930-01-01'),
	[YearResult] INT NOT NULL CONSTRAINT CK_Student__YearResult CHECK (YearResult >= 0 AND YearResult<=20) ,
	[SectionID] INT NOT NULL,
	[Active] BIT DEFAULT 1 NOT NULL , 

	CONSTRAINT PK_Student PRIMARY KEY([ID]),
	CONSTRAINT FK_Section FOREIGN KEY ([ID]) REFERENCES [Section]([ID]) ,
	

)
