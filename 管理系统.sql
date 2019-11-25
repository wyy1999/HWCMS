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



/*Ա����¼��*/
if exists(select * from sys.tables where name='UserLogin')
drop table UserLogin
GO
create table UserLogin(
   Userid int primary key identity(1,1),--����id
   UserName varchar(20) not null ,--Ա������
   Userpwd varchar(20)not null,--��¼����
    DutyId int references DutyInfo(DutyId) , --ְ���
   --��¼��ɫ  1 �ܾ��� 2���¾��� 3������ 4�������� 5�з����� 6Ա��
)
go
select * from userlogin
--��½��
insert into UserLogin values('���־�','123456',1)
insert into UserLogin values('��ӨӨ','123456',2)
insert into UserLogin values('λΰ��','123456',3)
insert into UserLogin values('������','123456',4)
insert into UserLogin values('�ܶ���','123456',5)
insert into UserLogin values('���Ǿ�','123456',6)
insert into UserLogin values('����','123456',6)



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
  InfoName varchar(20) not null,--����
  InfoAge int not null,--����
  InfoSex char(2) check(InfoSex='��' or InfoSex='Ů'),--�Ա�
  InfoDate datetime not null,--��������
  InfoIdcard varchar(20) not null unique,--���֤��
  InfoTel varchar(11) not null unique,--�绰
  InfoAddress varchar(50) not null,--��ַ
  InfoEmail varchar(40) not null unique,--����
  InfoEntrytime datetime default(getdate()) , --��ְʱ��
  InfoLeavetime varchar(50), --��ְʱ��
  InfoWorkyears varchar(20),--����
  DepId int references DepartmentInfo(DepId),--�������id
  DutyId int references DutyInfo(DutyId), --ְ�����id
  Userid int references UserLogin(Userid),--��½�����
  InfoSalary decimal(18,2) default(0) check(InfoSalary>=0) not null,--����
  InfoState int check( InfoState=1 or InfoState=2 )  --״̬  1��ְ 2��ְ
)

insert  into InfoTable values('��ӨӨ',18,'��','2001.11.1','147852369632541785','12345123454','����ʡ','11231234121@qq.com','','','2',1,2,2,'7000',1)
insert  into InfoTable values('λΰ��',20,'Ů','1999.10.1','145236525632458712','12345123456','����ʡ֣����','10231234121@qq.com',getdate(),'','3',2,3,3,'7000',1)
insert  into InfoTable values('�ܶ���',27,'��','1992.6.1','147852369963258741','12345123455','����ʡ֣����','10231234123@qq.com',getdate(),'','3',3,5,5,'5000',1)
insert  into InfoTable values('������',24,'Ů','1995.5.1','147852369987456123','12345123453','����ʡ֣���йܳ���','10231234124@qq.com',getdate(),'','3',4,4,4,'6000',1)
insert  into InfoTable values('���Ǿ�',20,'��','1999.10.1','147852369987456714','12345123483','����ʡ֣���йܳ���','10231234174@qq.com',getdate(),'','1',4,6,6,'4000',1)
insert  into InfoTable values('����',20,'��','1999.7.1','147852369987456185','12345123473','����ʡ֣���йܳ���','10231234824@qq.com',getdate(),'','3����',4,6,7,'3000',1)
select * from InfoTable

go


--�洢����
if exists(select * from sys.tables where name='sel_InfoTable')
drop proc sel_InfoTable
GO
create proc sel_InfoTable(@InfoName varchar(20)='', @DepId  int=0,@DutyId int=0,@InfoSex char(2)='',@InfoState int=0)
as
declare @strsql varchar(max)
set @strsql='select DepartmentInfo.Dep,DutyInfo.DutyName,userlogin.UserName, InfoTable .*from DepartmentInfo,DutyInfo,InfoTable,userlogin where DepartmentInfo.DepId=InfoTable.DepId and DutyInfo.DutyId=InfoTable.DutyId and userlogin.Userid=InfoTable.Userid and InfoName like ''%'+@InfoName+'%'''
if @DepId<>0
set @strsql=@strsql+' and InfoTable.DepId='+CONVERT(varchar,@DepId)
if @DutyId<>0
set @strsql=@strsql+' and InfoTable.DutyId='+CONVERT(varchar,@DutyId)
if @InfoSex<>''
set @strsql=@strsql+' and InfoSex='''+CONVERT(varchar,@InfoSex)+''''
if @InfoState<>0
set @strsql=@strsql+' and InfoState='+CONVERT(varchar,@InfoState)
print @strsql
exec(@strsql)
go
exec sel_InfoTable '��'
go


/*���ʱ� ���� Ա��id �ٵ����� ��� ȫ�� */
create table MoneyTable(
  MoneyId int primary key identity(1,1),
  InfoId int references  InfoTable(InfoId),  --Ա������� 
  Conunt int,--�ٵ�����
  MoneyDed decimal(18,2) default(0) check(MoneyDed>=0),--���
  MoneyState int check(MoneyState=1 or MoneyState=2 ) --״̬ ȫ�� 1�� 2��
)

insert into MoneyTable values(1,0,'200',1)
insert into MoneyTable values(2,3,'0',2)
insert into MoneyTable values(3,5,'0',2)
insert into MoneyTable values(4,0,'200',1)
insert into MoneyTable values(5,0,'200',1)
select * from MoneyTable

/*��Ա�򿨱� ClockInfo*/

if exists(select * from sys.tables where name='ClockInfo')
drop table ClockInfo
GO
create table ClockInfo(
   ClockId int primary key identity(1,1),--��id
   InfoId int references  InfoTable(InfoId),  --Ա�������
   ClockTime varchar(50) ,--��ʱ��
   ClockState int check(ClockState=1 or ClockState=2)--״̬ 1�Ѵ� 2 δ��
)
go

insert  into ClockInfo values(1,'2019/10/10 07:58:25',1)
insert  into ClockInfo values(2,'',2)
insert  into ClockInfo values(3,'2019/10/11 14:59:25',1)

select InfoTable.InfoName, ClockInfo.*from InfoTable,ClockInfo where ClockInfo.InfoId=InfoTable.InfoId

--Ա����ٱ�LeaveInfo
if exists(select * from sys.tables where name='LeaveInfo')
drop table LeaveInfo
GO
create table LeaveInfo(
	LeaveId int primary key identity(1,1),--���id
	InfoId int references  InfoTable(InfoId),   --Ա�������
	DepId int references DepartmentInfo(DepId),--���ű����
	LeaveTime datetime default(getdate()) not null,--���ʱ��
	LeTime datetime  not null,--����ʱ��
	LeaveReason varchar(100),--���ԭ��
	LeaveState int check(LeaveState=1 or LeaveState=2)--���״̬ 1δ��� 2�����
)
go

insert into LeaveInfo values (5,4,'2019/9/9','2019/9/11','�ؼҲμӻ���',1)
insert into LeaveInfo values (6,4,'2019/9/10','2019/9/14','�����м���',2)


if exists(select * from sys.procedures where name='Sel_LeaveInfo')
drop proc Sel_LeaveInfo
go
create proc Sel_LeaveInfo(@DepId int=0,@LeaveState int=0)
as
declare @sql varchar(max)
set @sql='select LeaveInfo.*,InfoTable.InfoName,DepartmentInfo.Dep from LeaveInfo,InfoTable,DepartmentInfo where LeaveInfo.InfoId=InfoTable.InfoId and LeaveInfo.DepId=DepartmentInfo.DepId'
if @DepId<>0
set @sql=@sql+' and LeaveInfo.DepId='+CONVERT(varchar,@DepId)
if @LeaveState<>0
set @sql=@sql+' and LeaveState='+CONVERT(varchar,@LeaveState)
exec(@sql)
go
exec Sel_LeaveInfo 1,0

--��˾������ ReportInfo
if exists(select * from sys.tables where name='ReportInfo')
drop table ReportInfo
GO
create table ReportInfo(
    ReportId int primary key identity(1,1),--����id
    RepName varchar(50),--��������
    ReportReason varchar(500) not null,--����ԭ��
    ReportTime datetime default(getdate()) not null,--����ʱ��
    DepId int references DepartmentInfo(DepId),--�������� ���ű����
    ReportMoney decimal(18,2) default(0) check(ReportMoney>=0) not null,--������
    ReportState int check(ReportState=1 or ReportState=2)--���״̬ 1δ��� 2�����
)
go
insert into ReportInfo values ('��ˮ��','��˾�Ҳ���ˮ������ˮ�����û��Ӧ','2019.11.12',3,1000,1)
insert into ReportInfo values ('����','�з���������ǰ���յ����ˣ����ؼ�û��Ӧ','2019.10.12',3,2000,1)
insert into ReportInfo values ('����','�绰����','2019.10.22',4,500,2)
insert into ReportInfo values ('����','���Ϻ��ֹ�˾Ǣ̸ҵ��','2019.10.27',4,2000,2)
select ReportInfo.*,DepartmentInfo.Dep from ReportInfo,DepartmentInfo where DepartmentInfo.DepId=ReportInfo.DepId

--������洢����
if exists(select * from sys.procedures where name='Sel_ReportInfo')
drop proc Sel_ReportInfo
go
create proc Sel_ReportInfo(@ReportReason varchar(50)='',@ReportState int=0)
as
declare @sql varchar(max)
set @sql='select ReportInfo.*,DepartmentInfo.Dep from ReportInfo,DepartmentInfo where DepartmentInfo.DepId=ReportInfo.DepId and ReportReason like ''%'+@ReportReason+'%'''
if @ReportState<>0
set @sql=@sql+' and ReportState='+CONVERT(varchar,@ReportState)
exec(@sql)
go
exec Sel_ReportInfo'',0


--�����֧����AccoutInfo
if exists(select * from sys.tables where name='AccoutInfo')
drop table AccoutInfo
GO
create table AccoutInfo(
   AccoutId int primary key identity(1,1),--֧��id
   AccMonth varchar(20)not null, --�·�
   ACCSalary decimal(18,2) check(ACCSalary>=0) not null,--�����ܽ��   
   AccReportModey decimal(18,2) check(AccReportModey>=0) not null,--�����ܽ�� 
   AccName varchar(10)not null--������Ա����
  
)
go

insert into AccoutInfo values ('10�·�',35000,5500,'��ӨӨ')
insert into AccoutInfo values ('9�·�',35000,6000,'��ӨӨ')
insert into AccoutInfo values ('11�·�',35000,8000,'��ӨӨ')
insert into AccoutInfo values ('8�·�',35000,3000,'��ӨӨ')

--�з����ű�ResearchInfo
if exists(select * from sys.tables where name='ResearchInfo')
drop table ResearchInfo
GO
create table ResearchInfo(
    ResId int primary key identity(1,1),--id
    Resname varchar(50) not null,--��Ŀ����
    ResIntroduce varchar(500) not null,--��Ŀ����
    ResGroup varchar(100),--�з�С��
    BeginTime date default(getdate()) not null,--��ʼʱ��
    EndTime date default(getdate()) not null,--����ʱ��
    ResMoney decimal(18,2) check(ResMoney>=0) default(0) not null,--�з����
    ResState int default(1) check(ResState=1 or ResState=2)--�з�״̬ 1�з��� 2�з����
)
go
select * from ResearchInfo
insert into ResearchInfo values('�Ƶ����ϵͳ','����ŵ����������������һվʽ����ϵͳ','���','2018.6.12','2019.6.20',40000,2)
insert into ResearchInfo values('��У���ֻ�����ƽ̨','Ϊ�����ʦ����ʵʱ���Ͻ������ϵͳ','��IT','2017.5.12','2018.5.20',50000,2)
insert into ResearchInfo values('������ϵͳ','Ϊ���õĽ���ͼ���������ͼ����������ʵ�����Ϲ���','��Զ','2018.5.12','2019.5.20',20000,2)
insert into ResearchInfo values('ҽ�ƹ���ϵͳ','��ҽ����ϵ������','���붼�ö�','2018.5.12','2019.5.20',20000,2)
insert into ResearchInfo values('�̳�ϵͳ','�����Ա���ƴ��๺����վ','������','2019.10.20','',30000,1)


if exists(select * from sys.procedures where name='sel_ResearchInfo')
drop proc sel_ResearchInfo
go
--�洢����
create proc sel_ResearchInfo(@Resname varchar(50) ='',@ResState int=0)
as
declare @strsql varchar(max)
set @strsql='select * from ResearchInfo where Resname like ''%'+@Resname+'%'''
if @ResState<>0
set @strsql=@strsql+'and ResState='+CONVERT(varchar,@ResState)
exec (@strsql)
go
exec sel_ResearchInfo '',0

--�з������ DetailsInfo
if exists(select * from sys.tables where name='DetailsInfo')
drop table DetailsInfo
GO

create table DetailsInfo(
   DetId int primary key identity(1,1),--��id
   DetName varchar(200),--�з���Ա
   DetContent varchar(500),--��Ŀ���
   UseMoney decimal(18,2) check(UseMoney>=0) default(0) not null,--�����ʽ�
   DetPlan varchar(50)not null,--����
   ResId int  references ResearchInfo(ResId)--����з��� ���ʽ� ��Ŀ���� ���ݣ�����
)

go
select * from DetailsInfo 


insert into DetailsInfo values ('���꣬���ಫ�����ԣ����������˼Ҭu���ڷ���','�ù˿͸��˽�Ƶ꣬ʵʱ�۲쵽����Ķ�̬�Լ���Ϣ��',38000,'100%',1)
insert into DetailsInfo values ('����','�û��鿴ǰ̨��Ϣ',10000,'100%',1)
insert into DetailsInfo values ('̷˳˳�������������ï���������������Ž���','���ֻ�����ѧ����Ϣ��ʵ�����Ͻ���ϵͳ��',50000,'100%',2)
insert into DetailsInfo values ('�ڳ�Խ��ʯ���Σ���ƶ�����·��','����ʱ�������ᵽ���ϣ���ֱ�۵��˽⵽��������Լ����¶�̬��',20000,'100%',3)
insert into DetailsInfo values ('��������������˼�ϣ����֣����η���������','���ֻ�ҽ��ƽ̨��ʵ�����ϹҺţ����Ͻɷѵ�Ŀ�Ľ�Լ����ʱ�䡣',20000,'100%',4)
insert into DetailsInfo values ('���������ģ����壬��������˹','�����̳ǣ�ʡʱʡ������Ϣ��������࣬���˿��㲻����ѡ��ϲ����Ʒ��',26000,'80%',5)
select ResearchInfo.Resname,ResearchInfo.ResGroup,ResearchInfo.ResMoney, ResearchInfo.ResIntroduce,DetailsInfo.*from ResearchInfo,DetailsInfo
where  ResearchInfo.ResId=DetailsInfo.ResId and DetailsInfo.ResId=1
go

if exists(select * from sys.procedures where name='sel_DetailsInfo')
drop proc sel_DetailsInfo
go
--�洢����
create proc sel_DetailsInfo( @ResId int=0)
as
declare @strsql varchar(max)
set @strsql='select ResearchInfo.Resname,ResearchInfo.ResGroup,ResearchInfo.ResMoney, ResearchInfo.ResIntroduce,DetailsInfo.*from ResearchInfo,DetailsInfo
where  ResearchInfo.ResId=DetailsInfo.ResId '
if @ResId<>0
set @strsql=@strsql+' and DetailsInfo.ResId='+CONVERT(varchar,@ResId)
exec(@strsql)
go
exec sel_DetailsInfo 1

--���۱�SaleInfo
if exists(select * from sys.tables where name='SaleInfo')
drop table SaleInfo
GO

create table SaleInfo(
   SaleId int primary key identity(1,1),--����id
   GroupName varchar(50) not null,--����
   SaleContent varchar(50),--��������
   SaleMoney decimal(18,2) check(SaleMoney>=0) default(0) not null,--���۽��
   DepId int references DepartmentInfo(DepId),--���� ���ű����
)
go
--SELECT * FROM SaleInfo
select SaleInfo.*,DepartmentInfo.Dep from SaleInfo,DepartmentInfo where DepartmentInfo.DepId=SaleInfo.DepId
INSERT INTO SaleInfo VALUES('������','�Ƶ����ϵͳ',60000,4)
INSERT INTO SaleInfo VALUES('��ֵ��','��У���ֻ�����ƽ̨',70000,4)
INSERT INTO SaleInfo VALUES('�ı���','������ϵͳ',90000,4)
INSERT INTO SaleInfo VALUES('�����','ҽ�ƹ���ϵͳ',100000,4)
if exists(select * from sys.procedures where name='sel_SaleInfo')
drop proc sel_SaleInfo
go
create proc sel_SaleInfo(@GroupName varchar(50)='',@DepId int=0)
as
declare @strsql varchar(max)
set @strsql='select * from SaleInfo,DepartmentInfo where DepartmentInfo.DepId=SaleInfo.DepId and GroupName like ''%'+@GroupName+'%'''
if @DepId<>0
set @strsql=@strsql+'and SaleInfo.DepId='+CONVERT(varchar,@DepId)
exec (@strsql)
go
exec sel_SaleInfo 


--�������۱�PersonSaleInfo
if exists(select * from sys.tables where name='PersonSaleInfo')
drop table PersonSaleInfo
GO
create table PersonSaleInfo(
  PerId int primary key identity(1,1),--��������id
  InfoId int references  InfoTable(InfoId),   --Ա������� �ֶ�  ���� ����  
  PerContent VARCHAR(500),--��������
  PerMoney decimal(18,2) check(PerMoney>=0) default(0) not null,--���۽��
  ConMoney decimal(18,2) check(ConMoney>=0) default(0) not null,--���ѽ��
)
go


INSERT INTO PersonSaleInfo VALUES(5,'�Ƶ����ϵͳ',10000,200)
INSERT INTO PersonSaleInfo VALUES(6,'��У���ֻ�����ƽ̨',20000,200)
SELECT InfoTable.InfoName,PersonSaleInfo.*FROM InfoTable,DepartmentInfo,PersonSaleInfo 
WHERE InfoTable.InfoId=PersonSaleInfo.InfoId 

--��������룩IncomeInfo
if exists(select * from sys.tables where name='IncomeInfo')
drop table IncomeInfo
GO
create table IncomeInfo(
   IncomeId int  primary key identity(1,1),--
 IncomMoney decimal(18,2) check(IncomMoney>=0) default(0) not null, --���
IncomForm varchar(50),--��Դ 
)
go

insert into IncomeInfo values('22000','�Ƶ����ϵͳ')
insert into IncomeInfo values('20000','��У���ֻ�����ƽ̨')


select * from IncomeInfo
--------------------------------------------------------��������









select * from DetailsInfo
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

