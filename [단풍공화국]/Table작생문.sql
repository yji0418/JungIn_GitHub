

use myDB

/*Member---------------------------------------------------------------------------------------------------------------------------------------*/
create table Member(
	UserID varchar(30) primary key,
	Password varchar(30) not null,
	Name varchar(30) not null,
	Phone varchar(30) not null)

select * from Member;

insert into Member values('JungIn','1111','윤정인','010-2687-7883')
insert into Member values('HyoIn','2222','나효인','010-1234-5678')
insert into Member values('HyeRi','3333','최혜리','010-5678-1234')

/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*Photos---------------------------------------------------------------------------------------------------------------------------------------*/

create table Photos(
imgID int IDENTITY(1,1) primary key,
userID nvarchar(50) Default('작성자'),
name nvarchar(50) default(''),
pwd nvarchar(50) default(''),
title nvarchar(50) NOT NULL,
body nvarchar(max),
fName nvarchar(100),
hit int Default(0),
pDate datetime Default(getdate()))

select * from Photos

/*---------------------------------------------------------------------------------------------------------------------------------------*/

/*Board---------------------------------------------------------------------------------------------------------------------------------------*/
CREATE TABLE board ()
  seq   int  identity(1,1) primary key,
  userID  nvarchar(30),
  name   nvarchar(50) not null,
  pwd   nvarchar(50) not null,
  title   nvarchar(100) not null,
  body   nvarchar(max),
  ref_id  int default(0),
  inner_id int default(0),
  depth   int default(0),
  hit   int default(0),
  deleted char(1) default(‘N’),
  wDate   datetime,
  fName  nvarchar(50),
  fSize  int default(0),
  hitDown  int default(0)
)
/*---------------------------------------------------------------------------------------------------------------------------------------*/

/*Schedule---------------------------------------------------------------------------------------------------------------------------------------*/
Create Table schedule (
   seq       int   Identity(1,1)  Primary Key,
   userID       nvarchar(30)  not null,
   sDate       date     not null,
   sTime       nvarchar(12)  not null,
   toDo       nvarchar(max) not null,
   hasDone  char(1)  Default('N')
)

select * from Schedule
/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*Personal---------------------------------------------------------------------------------------------------------------------------------------*/
create table personal(
sort int primary key identity,
UserID varchar(50),
img varchar(200),
nickname varchar(200),
Lv int,
job varchar(100),
server varchar(50),
s_attack varchar(200),
s_HP int,
s_MP int,
s_STR int,
s_DEX int,
s_INT int,
s_LUK int,
s_critical int,
s_boss int,
s_ignore int)

insert into personal values('master','master.png','얏꺼',240,'기사단/윈드브레이커','크로아','4,715,578 ~ 5,547,738', 45111,38616,2990,25175,1636,1505,48,226,91)

select * from personal

/*---------------------------------------------------------------------------------------------------------------------------------------*/


