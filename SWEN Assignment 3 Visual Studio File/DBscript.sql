USE [master]
GO
/****** Object:  Database [RoomBooking]    Script Date: 4/6/2013 4:41:36 PM ******/
CREATE DATABASE [RoomBooking]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RoomBooking', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\RoomBooking.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'RoomBooking_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\RoomBooking_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [RoomBooking] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RoomBooking].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RoomBooking] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RoomBooking] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RoomBooking] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RoomBooking] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RoomBooking] SET ARITHABORT OFF 
GO
ALTER DATABASE [RoomBooking] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RoomBooking] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [RoomBooking] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RoomBooking] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RoomBooking] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RoomBooking] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RoomBooking] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RoomBooking] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RoomBooking] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RoomBooking] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RoomBooking] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RoomBooking] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RoomBooking] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RoomBooking] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RoomBooking] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RoomBooking] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RoomBooking] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RoomBooking] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RoomBooking] SET RECOVERY FULL 
GO
ALTER DATABASE [RoomBooking] SET  MULTI_USER 
GO
ALTER DATABASE [RoomBooking] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RoomBooking] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RoomBooking] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RoomBooking] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'RoomBooking', N'ON'
GO
USE [RoomBooking]
GO
/****** Object:  Table [dbo].[Booking_Details]    Script Date: 4/6/2013 4:41:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Booking_Details](
	[bookingID] [varchar](10) NOT NULL,
	[nric] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CheckIn_Details]    Script Date: 4/6/2013 4:41:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CheckIn_Details](
	[bookingID] [varchar](10) NOT NULL,
	[checkInDate] [date] NOT NULL,
	[checkInTime] [time](7) NOT NULL,
	[checkOutDate] [date] NOT NULL,
	[checkOutTime] [time](7) NOT NULL,
 CONSTRAINT [PK_CheckIn_Details] PRIMARY KEY CLUSTERED 
(
	[bookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CreditCard_Details]    Script Date: 4/6/2013 4:41:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CreditCard_Details](
	[invoiceID] [varchar](10) NOT NULL,
	[cardNumber] [char](16) NOT NULL,
	[expiryDate] [char](5) NOT NULL,
	[cardType] [char](10) NOT NULL,
 CONSTRAINT [PK_CreditCard_Details] PRIMARY KEY CLUSTERED 
(
	[cardNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Guest_Details]    Script Date: 4/6/2013 4:41:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Guest_Details](
	[nric] [varchar](10) NOT NULL,
	[lastName] [varchar](25) NOT NULL,
	[firstName] [varchar](25) NOT NULL,
	[numberOfGuest] [int] NOT NULL,
	[phoneNumber] [varchar](15) NOT NULL,
	[emailAddress] [varchar](30) NOT NULL,
	[additionalRemarks] [varchar](100) NULL,
 CONSTRAINT [PK_Guest_Details] PRIMARY KEY CLUSTERED 
(
	[nric] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 4/6/2013 4:41:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Invoice](
	[bookingID] [varchar](10) NOT NULL,
	[invoiceID] [varchar](10) NOT NULL,
	[noOfNightsStayed] [int] NOT NULL,
	[roomRates] [int] NOT NULL,
	[miniBarUsed] [char](3) NOT NULL,
	[checkInDate] [date] NOT NULL,
	[checkOutDate] [date] NOT NULL,
	[additionalCost] [int] NULL,
	[paymentMethod] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[invoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mailing_Address]    Script Date: 4/6/2013 4:41:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mailing_Address](
	[staffID] [char](3) NOT NULL,
	[nric] [varchar](10) NOT NULL,
	[street] [varchar](30) NOT NULL,
	[block] [varchar](6) NOT NULL,
	[houseNumber] [varchar](6) NOT NULL,
	[postalCode] [varchar](15) NOT NULL,
	[country] [varchar](60) NOT NULL,
 CONSTRAINT [PK_Mailing_Address] PRIMARY KEY CLUSTERED 
(
	[nric] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Room_Details]    Script Date: 4/6/2013 4:41:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Room_Details](
	[bookingID] [varchar](10) NOT NULL,
	[nric] [varchar](10) NOT NULL,
	[roomStatus] [varchar](30) NOT NULL,
	[noOfGuest] [char](2) NOT NULL,
	[roomNumber] [varchar](6) NOT NULL,
	[roomLocation] [varchar](15) NOT NULL,
	[roomType] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Room_Details] PRIMARY KEY CLUSTERED 
(
	[bookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Staff_Account]    Script Date: 4/6/2013 4:41:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staff_Account](
	[staffID] [char](3) NOT NULL,
	[password] [varchar](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Staff_Details]    Script Date: 4/6/2013 4:41:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staff_Details](
	[staffID] [char](3) NOT NULL,
	[staffName] [varchar](25) NOT NULL,
	[dateOfBirth] [date] NOT NULL,
	[bankAccountNumber] [varchar](15) NOT NULL,
	[staffPhoneNumber] [varchar](15) NOT NULL,
	[dutyType] [char](2) NOT NULL,
 CONSTRAINT [PK_Staff_Details] PRIMARY KEY CLUSTERED 
(
	[staffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Booking_Details]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Details_Guest_Details] FOREIGN KEY([nric])
REFERENCES [dbo].[Guest_Details] ([nric])
GO
ALTER TABLE [dbo].[Booking_Details] CHECK CONSTRAINT [FK_Booking_Details_Guest_Details]
GO
ALTER TABLE [dbo].[Booking_Details]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Details_Room_Details] FOREIGN KEY([bookingID])
REFERENCES [dbo].[Room_Details] ([bookingID])
GO
ALTER TABLE [dbo].[Booking_Details] CHECK CONSTRAINT [FK_Booking_Details_Room_Details]
GO
ALTER TABLE [dbo].[CreditCard_Details]  WITH CHECK ADD  CONSTRAINT [FK_CreditCard_Details_Invoice] FOREIGN KEY([invoiceID])
REFERENCES [dbo].[Invoice] ([invoiceID])
GO
ALTER TABLE [dbo].[CreditCard_Details] CHECK CONSTRAINT [FK_CreditCard_Details_Invoice]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_CheckIn_Details] FOREIGN KEY([bookingID])
REFERENCES [dbo].[Room_Details] ([bookingID])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_CheckIn_Details]
GO
ALTER TABLE [dbo].[Mailing_Address]  WITH CHECK ADD  CONSTRAINT [FK_Mailing_Address_Guest_Details] FOREIGN KEY([nric])
REFERENCES [dbo].[Guest_Details] ([nric])
GO
ALTER TABLE [dbo].[Mailing_Address] CHECK CONSTRAINT [FK_Mailing_Address_Guest_Details]
GO
ALTER TABLE [dbo].[Mailing_Address]  WITH CHECK ADD  CONSTRAINT [FK_Mailing_Address_Staff_Details] FOREIGN KEY([staffID])
REFERENCES [dbo].[Staff_Details] ([staffID])
GO
ALTER TABLE [dbo].[Mailing_Address] CHECK CONSTRAINT [FK_Mailing_Address_Staff_Details]
GO
ALTER TABLE [dbo].[Room_Details]  WITH CHECK ADD  CONSTRAINT [FK_Room_Details_Guest_Details] FOREIGN KEY([nric])
REFERENCES [dbo].[Guest_Details] ([nric])
GO
ALTER TABLE [dbo].[Room_Details] CHECK CONSTRAINT [FK_Room_Details_Guest_Details]
GO
ALTER TABLE [dbo].[Staff_Account]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Account_Staff_Details] FOREIGN KEY([staffID])
REFERENCES [dbo].[Staff_Details] ([staffID])
GO
ALTER TABLE [dbo].[Staff_Account] CHECK CONSTRAINT [FK_Staff_Account_Staff_Details]
GO
USE [master]
GO
ALTER DATABASE [RoomBooking] SET  READ_WRITE 
GO
