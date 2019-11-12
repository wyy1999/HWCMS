use master
go
/*公司管理系统*/
if exists(select*from sys.databases where name='CompanyManagement')
	drop database CompanyManagement
go
create database CompanyManagement
go

use  CompanyManagement
go


/*员工登录表*/
if exists(select * from sys.tables where name='UserLogin')
drop table UserLogin
GO
create table UserLogin(
   Userid int primary key identity(1,1),--主键id
   UserNum int not null ,--员工编号
   Userpwd varchar(20)not null,--登录密码
   UserRole int check(UserRole=1 or UserRole=2 or UserRole=3 or UserRole=4 or UserRole=5 or UserRole=6  ) , 
   --登录角色  1 总经理 2人事经理 3财务经理 4销售主管 5研发主管 6员工
)
go

--登陆表
insert into UserLogin values(1001,'123456',1)
insert into UserLogin values(1002,'123456',2)
insert into UserLogin values(1003,'123456',3)
insert into UserLogin values(1004,'123456',4)
insert into UserLogin values(1005,'123456',5)
insert into UserLogin values(1006,'123456',6)

--公司职务表DutyInfo
if exists(select * from sys.tables where name='DutyInfo')
drop table DutyInfo
GO
create table DutyInfo(
   DutyId int primary key identity(1,1),--职务id
   DutyName varchar(20) not null,--职务名称
)
go

--职务表
insert into DutyInfo values('总经理')
insert into DutyInfo values('人事经理')
insert into DutyInfo values('财务经理')
insert into DutyInfo values('销售主管')
insert into DutyInfo values('研发主管')
insert into DutyInfo values('普通员工')
insert into DutyInfo values('实习生')


--公司部门表 DepartmentInfo
if exists(select * from sys.tables where name='DepartmentInfo')
drop table DepartmentInfo
GO
create table DepartmentInfo(
  DepId int primary key identity(1,1),--部门id
  Dep varchar(15) not null,--部门
)
go


--部门表
insert into DepartmentInfo values('人事部')
insert into DepartmentInfo values('财务部')
insert into DepartmentInfo values('研发部')
insert into DepartmentInfo values('销售部')


/*公司人员详细信息表 InfoTable*/
if exists(select * from sys.tables where name='InfoTable')
drop table InfoTable
GO
create table InfoTable(
  InfoId int primary key identity(1,1),--主键id
  InfoName varchar(10)not null,--姓名
  InfoAge int not null,--年龄
  InfoSex char(2) check(InfoSex='男' or InfoSex='女'),--性别
  InfoDate datetime not null,--出生年月
  InfoIdcard varchar(20) not null unique,--身份证号
  InfoTel varchar(11) not null unique,--电话
  InfoAddress varchar(50) not null,--地址
  InfoEmail varchar(40) not null unique,--邮箱
  InfoEntrytime datetime default(getdate()) , --入职时间
  InfoLeavetime datetime, --离职时间
  InfoWorkyears varchar(20),--工龄
  DepId int references DepartmentInfo(DepId),--部门外键id
  DutyId int references DutyInfo(DutyId), --职务外键id
  Userid int references UserLogin(Userid),--登陆表外键
  InfoSalary money default(0) check(InfoSalary>=0) not null,--工资
  InfoState int check(InfoState=0 or InfoState=1 or InfoState=2 )  --状态 0在职 1请假 2离职
)

insert  into InfoTable values('张三',18,'男','1997.11.1','123456431','12345123454','河南省','11231234121@qq.com','','','2',1,2,2,'7000',0)
insert  into InfoTable values('里斯',20,'女','1997.10.1','12345643152','12345123456','河南省郑州市','10231234121@qq.com',getdate(),'','3',2,3,3,'7000',0)

/*人员打卡表 ClockInfo*/
if exists(select * from sys.tables where name='ClockInfo')
drop table ClockInfo
GO
create table ClockInfo(
   ClockId int primary key identity(1,1),--打卡id
   InfoId int references  InfoTable(InfoId),  --员工表外键
   ClockTime datetime default(getdate()) not null,--打卡时间
   ClockState int check(ClockState=0 or ClockState=1)--状态 0已打卡 1 未打卡
)
go

insert  into ClockInfo values(1,'2019.10.10',0)
insert  into ClockInfo values(2,'2019.11.10',1)

select InfoTable.InfoName,ClockInfo.*from InfoTable,ClockInfo where ClockInfo.InfoId=InfoTable.InfoId

--员工请假表LeaveInfo
if exists(select * from sys.tables where name='LeaveInfo')
drop table LeaveInfo
GO
create table LeaveInfo(
	LeaveId int primary key identity(1,1),--请假id
	InfoId int references  InfoTable(InfoId),   --员工表外键
	DepId int references DepartmentInfo(DepId),--部门表外键
	LeaveTime datetime default(getdate()) not null,--请假时间
	LeaveReason varchar(100),--请假原因
	LeaveState int check(LeaveState=1 or LeaveState=0)--审核状态 0未审核 1已审核
)
go

insert into LeaveInfo values (1,1,'2019.9.9','回家结婚',0)

--公司报备表 ReportInfo
if exists(select * from sys.tables where name='ReportInfo')
drop table ReportInfo
GO
create table ReportInfo(
    ReportId int primary key identity(1,1),--报备id
    ReportReason varchar(500) not null,--报备原因
    ReportTime datetime default(getdate()) not null,--报备时间
    DepId int references DepartmentInfo(DepId),--报备部门 部门表外键
    ReportMoney money default(0) check(ReportMoney>=0) not null,--所需金额
    ReportState int check(ReportState=1 or ReportState=0)--审核状态 0未审核 1已审核
)
go
insert into ReportInfo values ('损坏','2012.1.12',2,3452,1)
insert into ReportInfo values ('坏','2012.2.12',3,5000,0)
select ReportInfo.*,DepartmentInfo.Dep from ReportInfo,DepartmentInfo where DepartmentInfo.DepId=ReportInfo.DepId

--财务表（支出）AccoutInfo
if exists(select * from sys.tables where name='AccoutInfo')
drop table AccoutInfo
GO
create table AccoutInfo(
   AccoutId int primary key identity(1,1),--支出id
   ACCSalary money check(ACCSalary>=0) not null,--工资总金额   
   AccSubsidy money check(AccSubsidy>=0) not null,--补贴总金额
   AccFiveMoney money check(AccFiveMoney>=0) not null,--五险一金总金额
   ReportId int references ReportInfo(ReportId),--报备金额 外键报备表 字段（报备部门  所需金额）
)
go

insert into AccoutInfo values (30000,5000,8000,1)

--研发部门表ResearchInfo
if exists(select * from sys.tables where name='ResearchInfo')
drop table ResearchInfo
GO
create table ResearchInfo(
    ResId int primary key identity(1,1),--id
    Resname varchar(50) not null,--产品名称
    ResIntroduce varchar(500) not null,--产品内容
    BeginTime datetime default(getdate()) not null,--开始时间
    EndTime datetime default(getdate()) not null,--结束时间
    ResMoney money check(ResMoney>=0) default(0) not null,--研发金额
    ResState int default(0) check(ResState=0 or ResState=1)--研发状态 0研发中 1研发完成
)
go
select * from ResearchInfo
insert into ResearchInfo values('火箭','飞天','2016.6.12','2018.6.20',123456,1)
insert into ResearchInfo values('拉布拉多','如何成功','2016.5.12','2018.5.20',50000,0)

--研发详情表 DetailsInfo
if exists(select * from sys.tables where name='DetailsInfo')
drop table DetailsInfo
GO

create table DetailsInfo(
   DetId int primary key identity(1,1),--主id
   InfoId int references  InfoTable(InfoId),   --员工表外键 研发负责人
   AllMoney money check(AllMoney>=0) default(0) not null,--总资金
   UseMoney money check(UseMoney>=0) default(0) not null,--已用资金
   OverMoney money check(OverMoney>=0) default(0) not null,--剩余资金
   DetPlan varchar(50)not null,--进度
   ResId int  references ResearchInfo(ResId)--外键研发表
)

go
select * from InfoTable 
select InfoTable.InfoName,DetailsInfo. * from DetailsInfo,InfoTable
where InfoTable.InfoId=DetailsInfo.InfoId

insert into DetailsInfo values (2,10000000,2000000,800000,'100%',1)
insert into DetailsInfo values (2,50000,50000,0,'50%',2)
select InfoTable.InfoName,ResearchInfo.Resname,ResearchInfo.ResIntroduce,DetailsInfo.*from InfoTable,ResearchInfo,DetailsInfo
where InfoTable.InfoId=DetailsInfo.InfoId and ResearchInfo.ResId=DetailsInfo.ResId

--销售表SaleInfo
if exists(select * from sys.tables where name='SaleInfo')
drop table SaleInfo
GO

create table SaleInfo(
   SaleId int primary key identity(1,1),--销售id
   GroupName varchar(50) not null,--组名
   SaleContent varchar(50),--销售内容
   SaleMoney money check(SaleMoney>=0) default(0) not null,--销售金额
   DepId int references DepartmentInfo(DepId),--报备部门 部门表外键
)
go

--个人销售表PersonSaleInfo
if exists(select * from sys.tables where name='PersonSaleInfo')
drop table PersonSaleInfo
GO
create table PersonSaleInfo(
  PerId int primary key identity(1,1),--个人销售id
  InfoId int references  InfoTable(InfoId),   --员工表外键 字段  姓名  
  DepId int references DepartmentInfo(DepId),--报备部门 部门表外键
  PerMoney money check(PerMoney>=0) default(0) not null,--销售金额
  ConMoney money check(ConMoney>=0) default(0) not null,--消费金额
)
go

--财务表（收入）IncomeInfo
if exists(select * from sys.tables where name='IncomeInfo')
drop table IncomeInfo
GO
create table IncomeInfo(
   IncomeId int  primary key identity(1,1),--
  SaleId int references SaleInfo(SaleId)  -- 销售金额 外键销售表   
)
go

select * from SaleInfo
--------------------------------------------------------插入数据










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

