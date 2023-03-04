create table LoginTable
(
	LoginID int identity(1,1) primary key,
	Email varchar(50) not null unique,
	Password varchar(50) not null,
	UserType int not null,
	UserStatus int not null
)
CREATE TABLE Donor(
	[D_id] [int] IDENTITY(1,1) NOT NULL primary key,
	[D_Name] [varchar](50) NOT NULL,
	[D_age] [int] NULL,
	[D_Contact] [varchar](50) NOT NULL,
	[D_SecContact] [varchar](50) NOT NULL,
	[D_Gender] [varchar](50) NOT NULL,
	[D_Address] [varchar](50) NOT NULL,
	[D_bgroup] [varchar](50) NOT NULL,
	[Image_name] [varchar](50) NOT NULL,
	[Reg_date][datetime] NOT NULL,
	LoginID int FOREIGN KEY REFERENCES LoginTable(LoginID)
)
CREATE TABLE UserOrg(
	[U_id] [int] IDENTITY(1,1) NOT NULL primary key,
	[U_Name] [varchar](50) NOT NULL,
	[U_Type] [int] NULL,
	[U_Contact] [varchar](50) NOT NULL,
	[U_Contact2] [varchar](50) NOT NULL,
	[U_CName] [varchar](50) NOT NULL,
	[U_CName2] [varchar](50) NOT NULL,
	[U_Address] [varchar](50) NOT NULL,
	[Image_name] [varchar](50) NOT NULL,
	[Reg_date][datetime] NOT NULL,
	LoginID int FOREIGN KEY REFERENCES LoginTable(LoginID)
)

CREATE TABLE [dbo].[Requester] (
    [RId]   INT  IDENTITY (1, 1) NOT NULL,
	[Requested_By] INT NULL,
	[Requested_To] INT NULL,
	[Requested_Date] datetime,
	[Requested_BloodGroup] VARCHAR (50) NULL,
	ReasonForReject  VARCHAR (250) NULL,
	Status int NULL);

	
	CREATE TABLE [dbo].[DonorHistory] (
    [Id]   INT  IDENTITY (1, 1) NOT NULL,
	[D_id] INT NULL,
	[Donate_Date] datetime NULL,
	[Description] VARCHAR (250) NULL,
	)

	select * from [dbo].[LoginTable]