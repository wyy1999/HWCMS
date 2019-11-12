use master
go
/*��˾����ϵͳ*/
if exists(select*from sys.databases where name='CompanyManagement')
	drop database CompanyManagement
go
create database CompanyManagement
go

use  CompanyManagement
go


/*Ա����¼��*/
if exists(select * from sys.tables where name='UserLogin')
drop table UserLogin
GO
create table UserLogin(
   Userid int primary key identity(1,1),--����id
   UserNum int not null ,--Ա�����
   Userpwd varchar(20)not null,--��¼����
   UserRole int check(UserRole=1 or UserRole=2 or UserRole=3 or UserRole=4 or UserRole=5 or UserRole=6  ) , 
   --��¼��ɫ  1 �ܾ��� 2���¾��� 3������ 4�������� 5�з����� 6Ա��
)
go

--��½��
insert into UserLogin values(1001,'123456',1)
insert into UserLogin values(1002,'123456',2)
insert into UserLogin values(1003,'123456',3)
insert into UserLogin values(1004,'123456',4)
insert into UserLogin values(1005,'123456',5)
insert into UserLogin values(1006,'123456',6)

--��˾ְ���DutyInfo
if exists(select * from sys.tables where name='DutyInfo')
drop table DutyInfo
GO
create table DutyInfo(
   DutyId int primary key identity(1,1),--ְ��id
   DutyName varchar(20) not null,--ְ������
)
go

--ְ���
insert into DutyInfo values('�ܾ���')
insert into DutyInfo values('���¾���')
insert into DutyInfo values('������')
insert into DutyInfo values('��������')
insert into DutyInfo values('�з�����')
insert into DutyInfo values('��ͨԱ��')
insert into DutyInfo values('ʵϰ��')


--��˾���ű� DepartmentInfo
if exists(select * from sys.tables where name='DepartmentInfo')
drop table DepartmentInfo
GO
create table DepartmentInfo(
  DepId int primary key identity(1,1),--����id
  Dep varchar(15) not null,--����
)
go


--���ű�
insert into DepartmentInfo values('���²�')
insert into DepartmentInfo values('����')
insert into DepartmentInfo values('�з���')
insert into DepartmentInfo values('���۲�')


/*��˾��Ա��ϸ��Ϣ�� InfoTable*/
if exists(select * from sys.tables where name='InfoTable')
drop table InfoTable
GO
create table InfoTable(
  InfoId int primary key identity(1,1),--����id
  InfoName varchar(10)not null,--����
  InfoAge int not null,--����
  InfoSex char(2) check(InfoSex='��' or InfoSex='Ů'),--�Ա�
  InfoDate datetime not null,--��������
  InfoIdcard varchar(20) not null unique,--���֤��
  InfoTel varchar(11) not null unique,--�绰
  InfoAddress varchar(50) not null,--��ַ
  InfoEmail varchar(40) not null unique,--����
  InfoEntrytime datetime default(getdate()) , --��ְʱ��
  InfoLeavetime datetime, --��ְʱ��
  InfoWorkyears varchar(20),--����
  DepId int references DepartmentInfo(DepId),--�������id
  DutyId int references DutyInfo(DutyId), --ְ�����id
  Userid int references UserLogin(Userid),--��½�����
  InfoSalary money default(0) check(InfoSalary>=0) not null,--����
  InfoState int check(InfoState=0 or InfoState=1 or InfoState=2 )  --״̬ 0��ְ 1��� 2��ְ
)

insert  into InfoTable values('����',18,'��','1997.11.1','123456431','12345123454','����ʡ','11231234121@qq.com','','','2',1,2,2,'7000',0)
insert  into InfoTable values('��˹',20,'Ů','1997.10.1','12345643152','12345123456','����ʡ֣����','10231234121@qq.com',getdate(),'','3',2,3,3,'7000',0)

/*��Ա�򿨱� ClockInfo*/
if exists(select * from sys.tables where name='ClockInfo')
drop table ClockInfo
GO
create table ClockInfo(
   ClockId int primary key identity(1,1),--��id
   InfoId int references  InfoTable(InfoId),  --Ա�������
   ClockTime datetime default(getdate()) not null,--��ʱ��
   ClockState int check(ClockState=0 or ClockState=1)--״̬ 0�Ѵ� 1 δ��
)
go

insert  into ClockInfo values(1,'2019.10.10',0)
insert  into ClockInfo values(2,'2019.11.10',1)

select InfoTable.InfoName,ClockInfo.*from InfoTable,ClockInfo where ClockInfo.InfoId=InfoTable.InfoId

--Ա����ٱ�LeaveInfo
if exists(select * from sys.tables where name='LeaveInfo')
drop table LeaveInfo
GO
create table LeaveInfo(
	LeaveId int primary key identity(1,1),--���id
	InfoId int references  InfoTable(InfoId),   --Ա�������
	DepId int references DepartmentInfo(DepId),--���ű����
	LeaveTime datetime default(getdate()) not null,--���ʱ��
	LeaveReason varchar(100),--���ԭ��
	LeaveState int check(LeaveState=1 or LeaveState=0)--���״̬ 0δ��� 1�����
)
go

insert into LeaveInfo values (1,1,'2019.9.9','�ؼҽ��',0)

--��˾������ ReportInfo
if exists(select * from sys.tables where name='ReportInfo')
drop table ReportInfo
GO
create table ReportInfo(
    ReportId int primary key identity(1,1),--����id
    ReportReason varchar(500) not null,--����ԭ��
    ReportTime datetime default(getdate()) not null,--����ʱ��
    DepId int references DepartmentInfo(DepId),--�������� ���ű����
    ReportMoney money default(0) check(ReportMoney>=0) not null,--������
    ReportState int check(ReportState=1 or ReportState=0)--���״̬ 0δ��� 1�����
)
go
insert into ReportInfo values ('��','2012.1.12',2,3452,1)
insert into ReportInfo values ('��','2012.2.12',3,5000,0)
select ReportInfo.*,DepartmentInfo.Dep from ReportInfo,DepartmentInfo where DepartmentInfo.DepId=ReportInfo.DepId

--�����֧����AccoutInfo
if exists(select * from sys.tables where name='AccoutInfo')
drop table AccoutInfo
GO
create table AccoutInfo(
   AccoutId int primary key identity(1,1),--֧��id
   ACCSalary money check(ACCSalary>=0) not null,--�����ܽ��   
   AccSubsidy money check(AccSubsidy>=0) not null,--�����ܽ��
   AccFiveMoney money check(AccFiveMoney>=0) not null,--����һ���ܽ��
   ReportId int references ReportInfo(ReportId),--������� ��������� �ֶΣ���������  �����
)
go

insert into AccoutInfo values (30000,5000,8000,1)

--�з����ű�ResearchInfo
if exists(select * from sys.tables where name='ResearchInfo')
drop table ResearchInfo
GO
create table ResearchInfo(
    ResId int primary key identity(1,1),--id
    Resname varchar(50) not null,--��Ʒ����
    ResIntroduce varchar(500) not null,--��Ʒ����
    BeginTime datetime default(getdate()) not null,--��ʼʱ��
    EndTime datetime default(getdate()) not null,--����ʱ��
    ResMoney money check(ResMoney>=0) default(0) not null,--�з����
    ResState int default(0) check(ResState=0 or ResState=1)--�з�״̬ 0�з��� 1�з����
)
go
select * from ResearchInfo
insert into ResearchInfo values('���','����','2016.6.12','2018.6.20',123456,1)
insert into ResearchInfo values('��������','��γɹ�','2016.5.12','2018.5.20',50000,0)

--�з������ DetailsInfo
if exists(select * from sys.tables where name='DetailsInfo')
drop table DetailsInfo
GO

create table DetailsInfo(
   DetId int primary key identity(1,1),--��id
   InfoId int references  InfoTable(InfoId),   --Ա������� �з�������
   AllMoney money check(AllMoney>=0) default(0) not null,--���ʽ�
   UseMoney money check(UseMoney>=0) default(0) not null,--�����ʽ�
   OverMoney money check(OverMoney>=0) default(0) not null,--ʣ���ʽ�
   DetPlan varchar(50)not null,--����
   ResId int  references ResearchInfo(ResId)--����з���
)

go
select * from InfoTable 
select InfoTable.InfoName,DetailsInfo. * from DetailsInfo,InfoTable
where InfoTable.InfoId=DetailsInfo.InfoId

insert into DetailsInfo values (2,10000000,2000000,800000,'100%',1)
insert into DetailsInfo values (2,50000,50000,0,'50%',2)
select InfoTable.InfoName,ResearchInfo.Resname,ResearchInfo.ResIntroduce,DetailsInfo.*from InfoTable,ResearchInfo,DetailsInfo
where InfoTable.InfoId=DetailsInfo.InfoId and ResearchInfo.ResId=DetailsInfo.ResId

--���۱�SaleInfo
if exists(select * from sys.tables where name='SaleInfo')
drop table SaleInfo
GO

create table SaleInfo(
   SaleId int primary key identity(1,1),--����id
   GroupName varchar(50) not null,--����
   SaleContent varchar(50),--��������
   SaleMoney money check(SaleMoney>=0) default(0) not null,--���۽��
   DepId int references DepartmentInfo(DepId),--�������� ���ű����
)
go

--�������۱�PersonSaleInfo
if exists(select * from sys.tables where name='PersonSaleInfo')
drop table PersonSaleInfo
GO
create table PersonSaleInfo(
  PerId int primary key identity(1,1),--��������id
  InfoId int references  InfoTable(InfoId),   --Ա������� �ֶ�  ����  
  DepId int references DepartmentInfo(DepId),--�������� ���ű����
  PerMoney money check(PerMoney>=0) default(0) not null,--���۽��
  ConMoney money check(ConMoney>=0) default(0) not null,--���ѽ��
)
go

--��������룩IncomeInfo
if exists(select * from sys.tables where name='IncomeInfo')
drop table IncomeInfo
GO
create table IncomeInfo(
   IncomeId int  primary key identity(1,1),--
  SaleId int references SaleInfo(SaleId)  -- ���۽�� ������۱�   
)
go

select * from SaleInfo
--------------------------------------------------------��������










select * from UserLogin
select * from DutyInfo
select * from DepartmentInfo
select * from ClockInfo
select * from LeaveInfo
select * from ResearchInfo

select * from InfoTable
select * from SaleInfo

select * from AccoutInfo

select * from UserLogin
select * from DutyInfo
select * from DepartmentInfo

