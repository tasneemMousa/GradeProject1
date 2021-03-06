USE [master]
GO
/****** Object:  Database [project]    Script Date: 30/06/2018 03:38:05 م ******/
CREATE DATABASE [project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\project.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\project_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [project] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [project] SET ARITHABORT OFF 
GO
ALTER DATABASE [project] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [project] SET  DISABLE_BROKER 
GO
ALTER DATABASE [project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [project] SET RECOVERY FULL 
GO
ALTER DATABASE [project] SET  MULTI_USER 
GO
ALTER DATABASE [project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [project] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [project] SET DELAYED_DURABILITY = DISABLED 
GO
USE [project]
GO
/****** Object:  Table [dbo].[blood_bank]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blood_bank](
	[bb_id] [int] IDENTITY(1,1) NOT NULL,
	[bb_name] [nvarchar](50) NULL,
	[bb_city] [nvarchar](50) NULL,
	[bb_zone] [nvarchar](50) NULL,
	[bb_address] [nvarchar](max) NULL,
	[bb_phone] [bigint] NULL,
	[bb_link] [nvarchar](max) NULL,
	[bb_type] [nvarchar](50) NULL,
	[bb_lat] [nvarchar](50) NULL,
	[bb_lng] [nvarchar](50) NULL,
	[user_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_blood_bank] PRIMARY KEY CLUSTERED 
(
	[bb_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cities]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cities](
	[city_id] [int] IDENTITY(1,1) NOT NULL,
	[city_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_cities] PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clinics]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clinics](
	[clinic_id] [int] IDENTITY(1,1) NOT NULL,
	[clinic_name] [nvarchar](50) NULL,
	[clinic_city] [nvarchar](50) NULL,
	[clinic_zone] [nvarchar](50) NULL,
	[clinic_address] [nvarchar](max) NULL,
	[clinic_phone] [bigint] NULL,
	[clinic_link] [nvarchar](max) NULL,
	[doc_spec] [nvarchar](50) NULL,
	[clinic_lat] [nvarchar](50) NULL,
	[clinic_long] [nvarchar](50) NULL,
	[user_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_clinincs] PRIMARY KEY CLUSTERED 
(
	[clinic_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[con_answers]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[con_answers](
	[con_id] [int] NOT NULL,
	[con_answer] [nvarchar](max) NOT NULL,
	[con_spec] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_con_answers] PRIMARY KEY CLUSTERED 
(
	[con_id] ASC,
	[con_spec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[consultions]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consultions](
	[con_id] [int] IDENTITY(1,1) NOT NULL,
	[con_question] [nvarchar](max) NULL,
	[con_spec] [nvarchar](50) NULL,
 CONSTRAINT [PK_consultions] PRIMARY KEY CLUSTERED 
(
	[con_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hospitals]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hospitals](
	[hospital_id] [int] IDENTITY(1,1) NOT NULL,
	[hospital_name] [nvarchar](50) NULL,
	[hospital_city] [nvarchar](50) NULL,
	[hospital_zone] [nvarchar](50) NULL,
	[hospital_address] [nvarchar](max) NULL,
	[hospital_phone] [bigint] NULL,
	[hospital_link] [nvarchar](max) NULL,
	[hospital_kind] [nvarchar](50) NULL,
	[hospital_lat] [nvarchar](50) NULL,
	[hospital_lng] [nvarchar](50) NULL,
	[user_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_hospitals] PRIMARY KEY CLUSTERED 
(
	[hospital_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[medical_center]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medical_center](
	[med_cent_id] [int] IDENTITY(1,1) NOT NULL,
	[med_cent_name] [nvarchar](50) NULL,
	[med_cent_city] [nvarchar](50) NULL,
	[med_cent_zone] [nvarchar](50) NULL,
	[med_cent_address] [nvarchar](max) NULL,
	[med_cent_phone] [bigint] NULL,
	[med_cent_link] [nvarchar](max) NULL,
	[med_cent_lat] [nvarchar](50) NULL,
	[med_cent_lng] [nvarchar](50) NULL,
	[user_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_medical_center] PRIMARY KEY CLUSTERED 
(
	[med_cent_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pharmacy]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pharmacy](
	[pharmacy_id] [int] IDENTITY(1,1) NOT NULL,
	[pharm_name] [nvarchar](50) NULL,
	[pharm_city] [nvarchar](50) NULL,
	[pharm_zone] [nvarchar](50) NULL,
	[pharm_address] [nvarchar](max) NULL,
	[bigint] [bigint] NULL,
	[pharm_link] [nvarchar](max) NULL,
	[pharm_lat] [nvarchar](50) NULL,
	[pharm_lng] [nvarchar](50) NULL,
	[user_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_pharmacy] PRIMARY KEY CLUSTERED 
(
	[pharmacy_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[register]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[register](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](50) NULL,
	[user_pass] [nvarchar](50) NULL,
	[user_code] [bigint] NULL,
 CONSTRAINT [PK_register] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[specializations]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[specializations](
	[spec_id] [int] IDENTITY(1,1) NOT NULL,
	[spec_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_specializations] PRIMARY KEY CLUSTERED 
(
	[spec_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[zones]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zones](
	[zone_id] [int] IDENTITY(1,1) NOT NULL,
	[zone_name] [nvarchar](50) NULL,
	[city_id] [int] NULL,
 CONSTRAINT [PK_zones] PRIMARY KEY CLUSTERED 
(
	[zone_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[getCities]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[getCities]
as
Begin
 Select city_id, city_name from cities
End
GO
/****** Object:  StoredProcedure [dbo].[getSpecializations]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[getSpecializations]
as
Begin
 Select spec_id, spec_name from Specializations
End
GO
/****** Object:  StoredProcedure [dbo].[getZonesbycitiesID]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[getZonesbycitiesID]
@city_id int
as
Begin
 Select zone_id, zone_name from zones 
 where city_id = @city_id
End
GO
/****** Object:  StoredProcedure [dbo].[insert_bb]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insert_bb]
@bb_name nvarchar(50),
@bb_city nvarchar(50),
@bb_zone nvarchar(50),
@bb_address nvarchar([max]),
@bb_phone bigint,
@bb_link nvarchar([max]),
@bb_type nvarchar(50),
@bb_lat nvarchar(50),
@bb_lng nvarchar(50) 
as
Begin
insert into blood_bank values(@bb_name,@bb_city,@bb_zone,@bb_address,@bb_phone,@bb_link,@bb_type,@bb_lat,@bb_lng)
End
GO
/****** Object:  StoredProcedure [dbo].[insert_clinic]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[insert_clinic]
@clinic_name nvarchar(50),
@clinic_city nvarchar(50),
@clinic_zone nvarchar(50),
@clinic_address nvarchar([max]),
@clinic_phone bigint,
@clinic_link nvarchar([max]),
@doc_spec nvarchar(50),
@clinic_lat nvarchar(50),
@clinic_long nvarchar(50) 
as
begin
insert into clinics values(@clinic_name,@clinic_city,@clinic_zone,@clinic_address,@clinic_phone,@clinic_link,@doc_spec,@clinic_lat,@clinic_long)
end
GO
/****** Object:  StoredProcedure [dbo].[insert_hospital]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insert_hospital]
@hospital_name nvarchar(50),
@hospital_city nvarchar(50),
@hospital_zone nvarchar(50),
@hospital_address nvarchar([max]),
@hospital_phone bigint,
@hospital_link nvarchar([max]),
@h_spec nvarchar(50),
@hospital_kind nvarchar(50),
@hospital_lat nvarchar(50),
@hospital_lng nvarchar(50)
as 
begin
insert into hospitals values (@hospital_name,@hospital_city,@hospital_zone,@hospital_address,
@hospital_phone,@hospital_link,@h_spec,@hospital_kind,@hospital_lat,@hospital_lng)
end
GO
/****** Object:  StoredProcedure [dbo].[insert_med_cen]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insert_med_cen]
@med_cent_name nvarchar(50),
@med_cent_city nvarchar(50),
@med_cent_zone nvarchar(50),
@med_cent_address nvarchar([max]),
@med_cent_phone bigint,
@med_cent_link nvarchar([max]),
@med_cent_lat nvarchar(50),
@med_cent_lng nvarchar(50)
as
begin
insert into medical_center values(@med_cent_name,@med_cent_city,@med_cent_zone,@med_cent_address,@med_cent_phone,
@med_cent_link,@med_cent_lat,@med_cent_lng)
end
GO
/****** Object:  StoredProcedure [dbo].[insert_pharmacy]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insert_pharmacy]
@pharm_name nvarchar(50),
@pharm_city nvarchar(50),
@pharm_zone nvarchar(50),
@pharm_address nvarchar([max]),
@pharm_phone bigint,
@pharm_link nvarchar([max]),
@pharm_lat nvarchar(50),
@pharm_lng nvarchar(50)

as 
begin 
insert into pharmacy values(@pharm_name,@pharm_city,@pharm_zone,
@pharm_address,@pharm_phone,@pharm_link,@pharm_lat,@pharm_lng)
end
GO
/****** Object:  StoredProcedure [dbo].[insert_users]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insert_users]
@user_name nvarchar(50), @user_pass nvarchar(50), @user_code bigint
as 
begin
if not exists (select [user_name] from register where [user_name]=@user_name)
insert into register values (@user_name,@user_pass,@user_code)
end
GO
/****** Object:  StoredProcedure [dbo].[search_bb]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[search_bb]
@bb_city nvarchar(50),
@bb_zone nvarchar(50)
as 
begin
select * from blood_bank where bb_city=@bb_city and bb_zone=@bb_zone 
end
GO
/****** Object:  StoredProcedure [dbo].[search_clinic]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[search_clinic]

@clinic_city nvarchar(50),
@clinic_zone nvarchar(50),
@doc_spec nvarchar(50)
as
begin

select * from clinics where clinic_city=@clinic_city and clinic_zone=@clinic_zone and doc_spec=@doc_spec

end

GO
/****** Object:  StoredProcedure [dbo].[search_hospital]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[search_hospital]
@hospital_city nvarchar(50),
@hospital_zone nvarchar(50),
@hospital_kind nvarchar(50)
as 
begin
select * from hospitals
where hospital_city=@hospital_city and hospital_zone=@hospital_zone 
and hospital_kind=@hospital_kind
end
GO
/****** Object:  StoredProcedure [dbo].[search_med_cen]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[search_med_cen]
@med_cent_city nvarchar(50),
@med_cent_zone nvarchar(50)
as
begin
select * from medical_center where med_cent_city=@med_cent_city and med_cent_zone=@med_cent_zone
end
GO
/****** Object:  StoredProcedure [dbo].[search_pharmacy]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[search_pharmacy]
@pharm_city nvarchar(50),
@pharm_zone nvarchar(50)
as 
begin 
select * from pharmacy where pharm_city=@pharm_city and pharm_zone=@pharm_zone
end

GO
/****** Object:  StoredProcedure [dbo].[update_bb]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[update_bb]
@bb_name nvarchar(50),
@bb_city nvarchar(50),
@bb_zone nvarchar(50),
@bb_address nvarchar([max]),
@bb_phone bigint,
@bb_link nvarchar([max]),
@user_name nvarchar(50),
@bb_loc_img image
as
begin
update blood_bank set bb_name=@bb_name,bb_city=@bb_city,bb_zone=@bb_zone,bb_address=@bb_address,
bb_phone=@bb_phone,bb_link=@bb_link,bb_loc_image=@bb_loc_img where [user_name]=@user_name
end 
GO
/****** Object:  StoredProcedure [dbo].[update_clinic]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[update_clinic]
@clinic_name nvarchar(50),
@clinic_city nvarchar(50),
@clinic_zone nvarchar(50),
@clinic_address nvarchar([max]),
@clinic_phone bigint,
@clinic_link nvarchar([max]),
@clinic_loc_img image,
@doc_spec nvarchar(50),
@user_name nvarchar(50)
as
begin
update clinics set clinic_name=@clinic_name,clinic_city=@clinic_city,clinic_zone=@clinic_zone,clinic_address=@clinic_address,
clinic_phone=@clinic_phone,clinic_link=@clinic_link,clinic_loc_img=@clinic_loc_img,doc_spec=@doc_spec
where [user_name]=@user_name
end

GO
/****** Object:  StoredProcedure [dbo].[update_hospital]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[update_hospital]
@hospital_name nvarchar(50),
@hospital_city nvarchar(50),
@hospital_zone nvarchar(50),
@hospital_address nvarchar([max]),
@hospital_phone bigint,
@hospital_link nvarchar([max]),
@hospital_kind nvarchar(50),
@user_name nvarchar(50),
@location_image image
as 
begin 
update hospitals set hospital_name=@hospital_name,hospital_city=@hospital_city,
hospital_zone=@hospital_zone,hospital_address=@hospital_address,hospital_phone=@hospital_phone,
hospital_link=@hospital_link,hospital_kind=@hospital_kind,location_image=@location_image
where [user_name]=@user_name

end
GO
/****** Object:  StoredProcedure [dbo].[update_med_cen]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[update_med_cen]
@med_cent_name nvarchar(50),
@med_cent_phone bigint,
@med_cent_city nvarchar(50),
@med_cent_zone nvarchar(50),
@med_cent_address nvarchar([max]),
@med_cent_link nvarchar([max]),
@user_name nvarchar(50)
as
begin
update medical_center set med_cent_name=@med_cent_name,med_cent_phone=@med_cent_phone,med_cent_city=@med_cent_city,
med_cent_zone=@med_cent_zone,med_cent_address=@med_cent_address where [user_name]=@user_name

end
GO
/****** Object:  StoredProcedure [dbo].[update_pharmacy]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[update_pharmacy]
@pharm_name nvarchar(50),
@pharm_phone bigint,
@pharm_city nvarchar(50),
@pharm_zone nvarchar(50),
@pharm_address nvarchar([max]),
@pharm_link nvarchar([max]),
@pharm_loc_img image,
@user_name nvarchar(50)

as 
begin 

update pharmacy set pharm_name=@pharm_name,pharm_phone=@pharm_phone,pharm_city=@pharm_city,pharm_zone=@pharm_zone,
pharm_address=@pharm_address,pharm_link=@pharm_link,pharm_loc_img=@pharm_loc_img
where [user_name]=@user_name

end
GO
/****** Object:  StoredProcedure [dbo].[users_login]    Script Date: 30/06/2018 03:38:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[users_login]
@user_name nvarchar(50),@user_pass nvarchar(50)
as
begin
select [user_name] from register where [user_name]=@user_name and user_pass=@user_pass
end
GO
USE [master]
GO
ALTER DATABASE [project] SET  READ_WRITE 
GO
