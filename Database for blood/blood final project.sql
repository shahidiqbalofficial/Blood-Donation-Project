Create Database BloodDonarrss
go
USE [BloodDonarrss]
GO
/****** Object:  Table [dbo].[donardetails]    Script Date: 03/08/2016 21:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 
CREATE TABLE [dbo].[donardetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[donarid] [nvarchar](12) NOT NULL,
	[donarusername] [nvarchar](25) NULL,
	[donarpassword] [nvarchar](25) NULL,
	[donarfullname] [nvarchar](25) NULL,
	[donardob] [nvarchar](20) NULL,
	[donargender] [nchar](2) NULL,
	[donarstate] [nvarchar](25) NULL,
	[donarcity] [nvarchar](25) NULL,
	[donaremailid] [nvarchar](30) NULL,
	[donarphone] [nvarchar](15) NULL,
	[donarbloodgroup] [nchar](3) NULL,
	[status] [nchar](10) NULL,
 CONSTRAINT [PK_donardetails] PRIMARY KEY CLUSTERED 
(
	[donarid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[donardetails] ON
INSERT [dbo].[donardetails] ([ID], [donarid], [donarusername], [donarpassword], [donarfullname], [donardob], [donargender], [donarstate], [donarcity], [donaremailid], [donarphone], [donarbloodgroup], [status]) VALUES (3, N'bdid_1000000', N'ayesha', N'abc', N'Ayesha zara', N'01-01-1001', N'f  ', N'panjab', N'Attock', N'Ayesha@gmail.com', N'0987654321', N'A+ ', N'inactive  ')
INSERT [dbo].[donardetails] ([ID], [donarid], [donarusername], [donarpassword], [donarfullname], [donardob], [donargender], [donarstate], [donarcity], [donaremailid], [donarphone], [donarbloodgroup], [status]) VALUES (1, N'bdid_1000001', N'kuram', N'tiger', N'kuram ali', NULL, N'M ', N'panjab', N'talagang', N'kuram@gmail.com', N'1234567890', N'A+ ', N'active    ')
INSERT [dbo].[donardetails] ([ID], [donarid], [donarusername], [donarpassword], [donarfullname], [donardob], [donargender], [donarstate], [donarcity], [donaremailid], [donarphone], [donarbloodgroup], [status]) VALUES (2, N'bdid_1000002', N'Kiran100', N'12345', N'Kiran Reddy', N'17-10-2001', N'f ', N'sind', N'quetta', N'kiran@yahoo.com', N'1234567890', N'A+ ', N'active    ')
INSERT [dbo].[donardetails] ([ID], [donarid], [donarusername], [donarpassword], [donarfullname], [donardob], [donargender], [donarstate], [donarcity], [donaremailid], [donarphone], [donarbloodgroup], [status]) VALUES (5, N'bdid_1000003', N'nasir', N'd', N'nasir waqas', N'16-6-2001', N'M ', N'panjab', N'mainwali', N'nasir@yahoo.com', N'1234567890', N'B- ', N'active    ')
INSERT [dbo].[donardetails] ([ID], [donarid], [donarusername], [donarpassword], [donarfullname], [donardob], [donargender], [donarstate], [donarcity], [donaremailid], [donarphone], [donarbloodgroup], [status]) VALUES (8, N'bdid_1000004', N'Ali', N'1234', N'ali aslam', N'16-6-2001', N'M ', N'panjab', N'pindi gheb', N'Ali@yahoo.com', N'1234567890', N'AB-', N'active    ')
INSERT [dbo].[donardetails] ([ID], [donarid], [donarusername], [donarpassword], [donarfullname], [donardob], [donargender], [donarstate], [donarcity], [donaremailid], [donarphone], [donarbloodgroup], [status]) VALUES (9, N'bdid_1000005', N'yaqoob', N'ssr', N'yaqoo murtaza', N'16-6-2001', N'M ', N'panjab', N'Hyderabad', N'yaqoob@yahoo.com', N'1234567890', N'AB+', N'active    ')
INSERT [dbo].[donardetails] ([ID], [donarid], [donarusername], [donarpassword], [donarfullname], [donardob], [donargender], [donarstate], [donarcity], [donaremailid], [donarphone], [donarbloodgroup], [status]) VALUES (10, N'bdid_1000006', N'fatima', N'pasha', N'fatima fasal', N'16-6-2001', N'f ', N'sind', N'karachi', N'ftima@yahoo.com', N'1234567890', N'O+ ', N'active    ')
INSERT [dbo].[donardetails] ([ID], [donarid], [donarusername], [donarpassword], [donarfullname], [donardob], [donargender], [donarstate], [donarcity], [donaremailid], [donarphone], [donarbloodgroup], [status]) VALUES (11, N'bdid_1000007', N'tooba', N'durgam', N'tooba javira', N'16-6-2001', N'f ', N'sindr', N'Hyderabad', N'tooba@gmail.com', N'9654321234', N'O- ', N'active    ')
INSERT [dbo].[donardetails] ([ID], [donarid], [donarusername], [donarpassword], [donarfullname], [donardob], [donargender], [donarstate], [donarcity], [donaremailid], [donarphone], [donarbloodgroup], [status]) VALUES (12, N'bdid_1000008', N'Azeem', N'durgam', N'azeem khan', N'16-6-2001', N'M ', N'fasalbad', N'city attock', N'Azeem@rediffmail.com', N'1234567890', N'A- ', N'active    ')
INSERT [dbo].[donardetails] ([ID], [donarid], [donarusername], [donarpassword], [donarfullname], [donardob], [donargender], [donarstate], [donarcity], [donaremailid], [donarphone], [donarbloodgroup], [status]) VALUES (13, N'bdid_1000009', N'Hader', N'srinivas', N'hader shah', N'16-6-2001', N'M ', N'panjab', N'dock', N'Hader@yahoo.com', N'1234567890', N'B+ ', N'active    ')
SET IDENTITY_INSERT [dbo].[donardetails] OFF
/****** Object:  Table [dbo].[bloodbankdetails]    Script Date: 03/08/2016 21:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bloodbankdetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[bbid] [nvarchar](10) NOT NULL,
	[bbname] [nvarchar](160) NULL,
	[bbaddress] [nvarchar](250) NULL,
	[bblandmark] [nvarchar](150) NULL,
	[bbphone1] [nvarchar](15) NULL,
	[bbphone2] [nvarchar](15) NULL,
	[bbemail] [nvarchar](30) NULL,
	[bbstate] [nvarchar](25) NULL,
	[bbcity] [nvarchar](25) NULL,
	[userid] [nvarchar](12) NULL,
	[bbstatus] [nchar](10) NULL,
 CONSTRAINT [PK_bloodbankdetails] PRIMARY KEY CLUSTERED 
(
	[bbid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[bloodbankdetails] ON
INSERT [dbo].[bloodbankdetails] ([ID], [bbid], [bbname], [bbaddress], [bblandmark], [bbphone1], [bbphone2], [bbemail], [bbstate], [bbcity], [userid], [bbstatus])
 VALUES (2, N'bbid_10000', N'aaa', N'aaa', NULL, N'1234567890', N'0987654321', N'abc@gmail.com', NULL, NULL, N'bdid_1000000', N'inactive  ')
INSERT [dbo].[bloodbankdetails] ([ID], [bbid], [bbname], [bbaddress], [bblandmark], [bbphone1], [bbphone2], [bbemail], [bbstate], [bbcity], [userid], [bbstatus])
 VALUES (3, N'bbid_10001', N'Shruthi Blood Bank', N'Door No : 103, 
Kukatpally X Road,
Hyderabad', N'Near D-Mart Super Market', N'1234567890', N'0987654321', N'ShruthiBB@gmail.com', N'sind', N'Hyderabad', N'bdid_1000001', N'active    ')
INSERT [dbo].[bloodbankdetails] ([ID], [bbid], [bbname], [bbaddress], [bblandmark], [bbphone1], [bbphone2], [bbemail], [bbstate], [bbcity], [userid], [bbstatus])
 VALUES (4, N'bbid_10002', N'JKC Blood Bank', N'flat No :10,
Arvind Appartment,
Dilsuknagar,
lahore', N'beside RS Brother Shopping Mall', N'0987654321', N'123456789', N'JKCBB@gmail.com', N'panjab', N'lahore', N'bdid_1000001', N'active    ')
INSERT [dbo].[bloodbankdetails] ([ID], [bbid], [bbname], [bbaddress], [bblandmark], [bbphone1], [bbphone2], [bbemail], [bbstate], [bbcity], [userid], [bbstatus])
 VALUES (5, N'bbid_10003', N'S.S Blood Bank', N'Door No :103,
RTC X Road,,
rawal pindi', N'beside Sandhya Theater', N'0987654321', N'123456789', N'SSBB@gmail.com', N'panjab', N'rawal pindi', N'bdid_1000001', N'active    ')
INSERT [dbo].[bloodbankdetails] ([ID], [bbid], [bbname], [bbaddress], [bblandmark], [bbphone1], [bbphone2], [bbemail], [bbstate], [bbcity], [userid], [bbstatus])
 VALUES (6, N'bbid_10004', N'Apollo Blood Bank', N'Street No :10, 
film nagar, 
Banjara Hills Road No : 45,
faslabad
', N'Opp. Line of Film Chamber', N'0987654321', N'123456789', N'appolloBB@gmail.com', N'panjab', N'faslabad', N'bdid_1000001', N'active    ')
INSERT [dbo].[bloodbankdetails] ([ID], [bbid], [bbname], [bbaddress], [bblandmark], [bbphone1], [bbphone2], [bbemail], [bbstate], [bbcity], [userid], [bbstatus])
 VALUES (7, N'bbid_10005', N'Muthu Blood Bank', N'Street No :10, 
film nagar, 
Banjara Hills Road No : 45,
sukkar
', N'', N'0987654321', N'4444444444', N'mbb@gmail.com', N'Balochistan', N'sukkar', N'bdid_1000001', N'active    ')
INSERT [dbo].[bloodbankdetails] ([ID], [bbid], [bbname], [bbaddress], [bblandmark], [bbphone1], [bbphone2], [bbemail], [bbstate], [bbcity], [userid], [bbstatus])
 VALUES (8, N'bbid_10006', N'City Blood Bank', N'BTM 2nd Stage
', N'', N'0987654321', N'4444444444', N'bcbb@gmail.com', N'Kpk', N'sakir', N'bdid_1000001', N'active    ')
INSERT [dbo].[bloodbankdetails] ([ID], [bbid], [bbname], [bbaddress], [bblandmark], [bbphone1], [bbphone2], [bbemail], [bbstate], [bbcity], [userid], [bbstatus])
 VALUES (9, N'bbid_10007', N'Blood Bank World', N'Koramanagala

', N'Opp Forum Mall', N'0987654321', N'4444444444', N'bbwb@gmail.com', N'Balochistan', N'galustuo', N'bdid_1000001', N'active    ')
INSERT [dbo].[bloodbankdetails] ([ID], [bbid], [bbname], [bbaddress], [bblandmark], [bbphone1], [bbphone2], [bbemail], [bbstate], [bbcity], [userid], [bbstatus])
 VALUES (10, N'bbid_10008', N'Reddy Blood Bank', N'Marathallli

', N'Near @home Shopping Mall', N'0987654321', N'4444444444', N'rbb@gmail.com', N'kpk', N'Bawalor', N'bdid_1000001', N'active    ')
SET IDENTITY_INSERT [dbo].[bloodbankdetails] OFF
/****** Object:  StoredProcedure [dbo].[proc_allDonarDetails]    Script Date: 03/08/2016 21:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[proc_allDonarDetails]
as begin
 select * from donardetails
end
GO
/****** Object:  Table [dbo].[PostStatus]    Script Date: 03/08/2016 21:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[donarid] [nvarchar](12) NOT NULL,
	[statuspostid] [nvarchar](10) NOT NULL,
	[statusmessage] [nvarchar](160) NULL,
	[statuspostedtime] [nvarchar](30) NULL,
	[nooftimepostedited] [nchar](2) NULL,
 CONSTRAINT [PK_PostStatus] PRIMARY KEY CLUSTERED 
(
	[statuspostid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PostStatus] ON
INSERT [dbo].[PostStatus] ([ID], [donarid], [statuspostid], [statusmessage], [statuspostedtime], [nooftimepostedited]) VALUES (14, N'bdid_1000000', N'psid_10000', N'Hello Guys kkkkkkkkkkkkkkkk', N'01-01-1001', N'0 ')
INSERT [dbo].[PostStatus] ([ID], [donarid], [statuspostid], [statusmessage], [statuspostedtime], [nooftimepostedited]) VALUES (15, N'bdid_1000002', N'psid_10001', N'Hi guys thanks for refering me to this site and this site is very helpful for all them who really want to help people to save other life for donation blood.', N'2016-02-02', N'0 ')
INSERT [dbo].[PostStatus] ([ID], [donarid], [statuspostid], [statusmessage], [statuspostedtime], [nooftimepostedited]) VALUES (16, N'bdid_1000001', N'psid_10002', N'thanks for accepting my request to this post', N'2016-02-02', N'0 ')
INSERT [dbo].[PostStatus] ([ID], [donarid], [statuspostid], [statusmessage], [statuspostedtime], [nooftimepostedited]) VALUES (17, N'bdid_1000001', N'psid_10003', N'fdgd sdf sdfds gsd gsd gsdg sd', N'2016-02-02', N'0 ')
INSERT [dbo].[PostStatus] ([ID], [donarid], [statuspostid], [statusmessage], [statuspostedtime], [nooftimepostedited]) VALUES (18, N'bdid_1000001', N'psid_10004', N'jhjkhjkh jh j hjkhkhkjhklj lkjklj  kllkjkljlk jkjk jklj  kjl;', N'2016-03-02', N'0 ')
INSERT [dbo].[PostStatus] ([ID], [donarid], [statuspostid], [statusmessage], [statuspostedtime], [nooftimepostedited]) VALUES (19, N'bdid_1000001', N'psid_10005', N'hi today i''m happy', N'2016-04-02', N'0 ')
INSERT [dbo].[PostStatus] ([ID], [donarid], [statuspostid], [statusmessage], [statuspostedtime], [nooftimepostedited]) VALUES (20, N'bdid_1000001', N'psid_10006', N'today i''m going to post this project in my site', N'2016-06-03', N'0 ')
SET IDENTITY_INSERT [dbo].[PostStatus] OFF
/****** Object:  StoredProcedure [dbo].[proc_autogenerateblooddonarID]    Script Date: 03/08/2016 21:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_autogenerateblooddonarID]
as begin 
select MAX(donarid) from donardetails
end
GO
/****** Object:  StoredProcedure [dbo].[proc_FilterBloodDonarDetails]    Script Date: 03/08/2016 21:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_FilterBloodDonarDetails](
@state varchar(25),
@city varchar(25),
@bloodgroup nchar(3))
as begin
 select * from donardetails where donarstate=@state and donarcity=@city and donarbloodgroup=@bloodgroup
end
GO
/****** Object:  StoredProcedure [dbo].[proc_DeleteDonarDetails]    Script Date: 03/08/2016 21:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[proc_DeleteDonarDetails](@did nvarchar(12))
as begin
 Delete donardetails where donarid=@did
end
GO
/****** Object:  StoredProcedure [dbo].[proc_getsingledonardetails]    Script Date: 03/08/2016 21:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_getsingledonardetails](@donarusername nvarchar(25))
as begin 
select * from donardetails where donarusername=@donarusername and status='active'
end
GO
/****** Object:  StoredProcedure [dbo].[proc_getDonarDetails]    Script Date: 03/08/2016 21:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[proc_getDonarDetails](@dusername nvarchar(25), @donarpassword nvarchar(25))
as begin
 select * from donardetails where donarusername=@dusername and donarpassword=@donarpassword and status='active'
end
GO
/****** Object:  StoredProcedure [dbo].[proc_getALLDonarDetails]    Script Date: 03/08/2016 21:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[proc_getALLDonarDetails]
as begin
 select * from donardetails where status='active'
end
GO
/****** Object:  StoredProcedure [dbo].[proc_insertBloodDonarDetails]    Script Date: 03/08/2016 21:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_insertBloodDonarDetails](
@donarid varchar(20),
@donarusername varchar(30),
@donarpassword varchar(30),
@donarfullname varchar(50),
@donardateofbirth varchar(30),
@donargender varchar(20),
@donarstate varchar(25),
@donarcity varchar(25),
@donaremailaddress varchar(50),
@donarphonenumber varchar(30),
@donarBloodGroup varchar(30),
@donarstatus nchar(10))
As begin

Insert into donardetails(donarid, donarusername, donarpassword, donarfullname, donardob, donargender, donarstate, donarcity, donaremailid, donarphone,donarbloodgroup,status) values (@donarid, @donarusername, @donarpassword, @donarfullname, @donardateofbirth, @donargender, @donarstate, @donarcity, @donaremailaddress, @donarphonenumber, @donarBloodGroup, @donarstatus)

End
GO
/****** Object:  StoredProcedure [dbo].[proc_UpdateDonarDetails]    Script Date: 03/08/2016 21:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[proc_UpdateDonarDetails](@did nvarchar(12),
@dusername nvarchar(25),
@dpassword nvarchar(25),
@dfullname nvarchar(25),
@ddob nvarchar(20),
@dgender nchar(2),
@demailid nvarchar(30),
@dphone nvarchar(15),
@dbloodgroup nchar(5))
as begin
 update donardetails set donarusername=@dusername, donarpassword=@dpassword, donarfullname=@dfullname, donardob=@ddob, donargender=@dgender, donaremailid=@demailid, donarphone=@dphone, donarbloodgroup=@dbloodgroup where donarid=@did
end
GO
/****** Object:  StoredProcedure [dbo].[proc_singlebloodbankdetails]    Script Date: 03/08/2016 21:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_singlebloodbankdetails](@bbid varchar(10))
as begin
 select * from bloodbankdetails where bbid=@bbid
end
GO
/****** Object:  StoredProcedure [dbo].[proc_NoOfStatusPosted]    Script Date: 03/08/2016 21:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_NoOfStatusPosted]
as begin
 select count(*) from PostStatus
end
GO
/****** Object:  StoredProcedure [dbo].[proc_InsertStatusData]    Script Date: 03/08/2016 21:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[proc_InsertStatusData](
@donarid nvarchar(12),
@statusid nvarchar(10),
@statusmessage nvarchar(160),
@poststatustime date,
@nooftimestatusedited nchar(2))
as begin 
 Insert into PostStatus(donarid, statuspostid, statusmessage, statuspostedtime, nooftimepostedited) values(@donarid, @statusid, @statusmessage, @poststatustime, @nooftimestatusedited)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_InsertBloodBankDetails]    Script Date: 03/08/2016 21:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_InsertBloodBankDetails](
@bbid varchar(10),
@bbname varchar(160),
@bbaddress varchar(250),
@bblandmark varchar(150),
@bbphone1 varchar(15),
@bbphone2 varchar(15),
@bbemail varchar(30),
@bbstate varchar(15),
@bbcity varchar(15),
@userid varchar(12),
@bbstatus nchar(10)
)
as begin 
 Insert into bloodbankdetails(bbid, bbname, bbaddress, bblandmark, bbphone1, bbphone2, bbemail, bbstate, bbcity, userid, bbstatus) values(@bbid, @bbname, @bbaddress,@bblandmark, @bbphone1, @bbphone2, @bbemail, @bbstate, @bbcity, @userid, @bbstatus)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_getAllBloodBankData]    Script Date: 03/08/2016 21:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_getAllBloodBankData]
as begin
 select * from bloodbankdetails where bbstatus='active'
end
GO
/****** Object:  StoredProcedure [dbo].[proc_getBloodbank_StateCity]    Script Date: 03/08/2016 21:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_getBloodbank_StateCity](@bbstate varchar(25),
@bbcity varchar(25))
as begin
 select * from bloodbankdetails where bbstate=@bbstate and bbcity=@bbcity
end
GO
/****** Object:  StoredProcedure [dbo].[proc_getAllUserStatus]    Script Date: 03/08/2016 21:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_getAllUserStatus](@donarid nvarchar(12))
as begin
 select * from PostStatus where donarid=@donarid
end
GO
/****** Object:  StoredProcedure [dbo].[proc_autogeneratestatusID]    Script Date: 03/08/2016 21:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_autogeneratestatusID]
as begin
 select MAX(statuspostid) from PostStatus
end
GO
/****** Object:  StoredProcedure [dbo].[proc_autogenerateBloodBankID]    Script Date: 03/08/2016 21:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_autogenerateBloodBankID]
as begin 
 select MAX(bbid) from bloodbankdetails
end
GO
/****** Object:  ForeignKey [FK_bloodbankdetails_donardetails]    Script Date: 03/08/2016 21:58:45 ******/
ALTER TABLE [dbo].[bloodbankdetails]  WITH CHECK ADD  CONSTRAINT [FK_bloodbankdetails_donardetails] FOREIGN KEY([userid])
REFERENCES [dbo].[donardetails] ([donarid])
GO
ALTER TABLE [dbo].[bloodbankdetails] CHECK CONSTRAINT [FK_bloodbankdetails_donardetails]
GO
/****** Object:  ForeignKey [FK_PostStatus_donardetails]    Script Date: 03/08/2016 21:58:45 ******/
ALTER TABLE [dbo].[PostStatus]  WITH CHECK ADD  CONSTRAINT [FK_PostStatus_donardetails] FOREIGN KEY([donarid])
REFERENCES [dbo].[donardetails] ([donarid])
GO
ALTER TABLE [dbo].[PostStatus] CHECK CONSTRAINT [FK_PostStatus_donardetails]
GO
