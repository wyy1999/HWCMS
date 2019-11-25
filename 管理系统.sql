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



/*员工登录表*/
if exists(select * from sys.tables where name='UserLogin')
drop table UserLogin
GO
create table UserLogin(
   Userid int primary key identity(1,1),--主键id
   UserName varchar(20) not null ,--员工姓名
   Userpwd varchar(20)not null,--登录密码
    DutyId int references DutyInfo(DutyId) , --职务表
   --登录角色  1 总经理 2人事经理 3财务经理 4销售主管 5研发主管 6员工
)
go
select * from userlogin
--登陆表
insert into UserLogin values('柳林军','123456',1)
insert into UserLogin values('王莹莹','123456',2)
insert into UserLogin values('位伟峰','123456',3)
insert into UserLogin values('宋玉鑫','123456',4)
insert into UserLogin values('周丁浩','123456',5)
insert into UserLogin values('白亚军','123456',6)
insert into UserLogin values('李明','123456',6)



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
  InfoName varchar(20) not null,--姓名
  InfoAge int not null,--年龄
  InfoSex char(2) check(InfoSex='男' or InfoSex='女'),--性别
  InfoDate datetime not null,--出生年月
  InfoIdcard varchar(20) not null unique,--身份证号
  InfoTel varchar(11) not null unique,--电话
  InfoAddress varchar(50) not null,--地址
  InfoEmail varchar(40) not null unique,--邮箱
  InfoEntrytime datetime default(getdate()) , --入职时间
  InfoLeavetime varchar(50), --离职时间
  InfoWorkyears varchar(20),--工龄
  DepId int references DepartmentInfo(DepId),--部门外键id
  DutyId int references DutyInfo(DutyId), --职务外键id
  Userid int references UserLogin(Userid),--登陆表外键
  InfoSalary decimal(18,2) default(0) check(InfoSalary>=0) not null,--工资
  InfoState int check( InfoState=1 or InfoState=2 )  --状态  1在职 2离职
)

insert  into InfoTable values('王莹莹',18,'男','2001.11.1','147852369632541785','12345123454','河南省','11231234121@qq.com','','','2',1,2,2,'7000',1)
insert  into InfoTable values('位伟峰',20,'女','1999.10.1','145236525632458712','12345123456','河南省郑州市','10231234121@qq.com',getdate(),'','3',2,3,3,'7000',1)
insert  into InfoTable values('周丁浩',27,'男','1992.6.1','147852369963258741','12345123455','河南省郑州市','10231234123@qq.com',getdate(),'','3',3,5,5,'5000',1)
insert  into InfoTable values('宋玉鑫',24,'女','1995.5.1','147852369987456123','12345123453','河南省郑州市管城区','10231234124@qq.com',getdate(),'','3',4,4,4,'6000',1)
insert  into InfoTable values('白亚军',20,'男','1999.10.1','147852369987456714','12345123483','河南省郑州市管城区','10231234174@qq.com',getdate(),'','1',4,6,6,'4000',1)
insert  into InfoTable values('李明',20,'男','1999.7.1','147852369987456185','12345123473','河南省郑州市管城区','10231234824@qq.com',getdate(),'','3个月',4,6,7,'3000',1)
select * from InfoTable

go


--存储过程
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
exec sel_InfoTable '王'
go


/*工资表 工资 员工id 迟到次数 提成 全勤 */
create table MoneyTable(
  MoneyId int primary key identity(1,1),
  InfoId int references  InfoTable(InfoId),  --员工表外键 
  Conunt int,--迟到次数
  MoneyDed decimal(18,2) default(0) check(MoneyDed>=0),--提成
  MoneyState int check(MoneyState=1 or MoneyState=2 ) --状态 全勤 1是 2否
)

insert into MoneyTable values(1,0,'200',1)
insert into MoneyTable values(2,3,'0',2)
insert into MoneyTable values(3,5,'0',2)
insert into MoneyTable values(4,0,'200',1)
insert into MoneyTable values(5,0,'200',1)
select * from MoneyTable

/*人员打卡表 ClockInfo*/

if exists(select * from sys.tables where name='ClockInfo')
drop table ClockInfo
GO
create table ClockInfo(
   ClockId int primary key identity(1,1),--打卡id
   InfoId int references  InfoTable(InfoId),  --员工表外键
   ClockTime varchar(50) ,--打卡时间
   ClockState int check(ClockState=1 or ClockState=2)--状态 1已打卡 2 未打卡
)
go

insert  into ClockInfo values(1,'2019/10/10 07:58:25',1)
insert  into ClockInfo values(2,'',2)
insert  into ClockInfo values(3,'2019/10/11 14:59:25',1)

select InfoTable.InfoName, ClockInfo.*from InfoTable,ClockInfo where ClockInfo.InfoId=InfoTable.InfoId

--员工请假表LeaveInfo
if exists(select * from sys.tables where name='LeaveInfo')
drop table LeaveInfo
GO
create table LeaveInfo(
	LeaveId int primary key identity(1,1),--请假id
	InfoId int references  InfoTable(InfoId),   --员工表外键
	DepId int references DepartmentInfo(DepId),--部门表外键
	LeaveTime datetime default(getdate()) not null,--请假时间
	LeTime datetime  not null,--结束时间
	LeaveReason varchar(100),--请假原因
	LeaveState int check(LeaveState=1 or LeaveState=2)--审核状态 1未审核 2已审核
)
go

insert into LeaveInfo values (5,4,'2019/9/9','2019/9/11','回家参加婚礼',1)
insert into LeaveInfo values (6,4,'2019/9/10','2019/9/14','家里有急事',2)


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

--公司报备表 ReportInfo
if exists(select * from sys.tables where name='ReportInfo')
drop table ReportInfo
GO
create table ReportInfo(
    ReportId int primary key identity(1,1),--报备id
    RepName varchar(50),--报备名称
    ReportReason varchar(500) not null,--报备原因
    ReportTime datetime default(getdate()) not null,--报备时间
    DepId int references DepartmentInfo(DepId),--报备部门 部门表外键
    ReportMoney decimal(18,2) default(0) check(ReportMoney>=0) not null,--所需金额
    ReportState int check(ReportState=1 or ReportState=2)--审核状态 1未审核 2已审核
)
go
insert into ReportInfo values ('饮水机','公司右侧饮水机不出水，插电没反应','2019.11.12',3,1000,1)
insert into ReportInfo values ('公调','研发部会议室前方空调坏了，开关键没反应','2019.10.12',3,2000,1)
insert into ReportInfo values ('话费','电话推销','2019.10.22',4,500,2)
insert into ReportInfo values ('出差','到上海分公司洽谈业务','2019.10.27',4,2000,2)
select ReportInfo.*,DepartmentInfo.Dep from ReportInfo,DepartmentInfo where DepartmentInfo.DepId=ReportInfo.DepId

--报备表存储过程
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


--财务表（支出）AccoutInfo
if exists(select * from sys.tables where name='AccoutInfo')
drop table AccoutInfo
GO
create table AccoutInfo(
   AccoutId int primary key identity(1,1),--支出id
   AccMonth varchar(20)not null, --月份
   ACCSalary decimal(18,2) check(ACCSalary>=0) not null,--工资总金额   
   AccReportModey decimal(18,2) check(AccReportModey>=0) not null,--报备总金额 
   AccName varchar(10)not null--财务人员名称
  
)
go

insert into AccoutInfo values ('10月份',35000,5500,'王莹莹')
insert into AccoutInfo values ('9月份',35000,6000,'王莹莹')
insert into AccoutInfo values ('11月份',35000,8000,'王莹莹')
insert into AccoutInfo values ('8月份',35000,3000,'王莹莹')

--研发部门表ResearchInfo
if exists(select * from sys.tables where name='ResearchInfo')
drop table ResearchInfo
GO
create table ResearchInfo(
    ResId int primary key identity(1,1),--id
    Resname varchar(50) not null,--项目名称
    ResIntroduce varchar(500) not null,--项目内容
    ResGroup varchar(100),--研发小组
    BeginTime date default(getdate()) not null,--开始时间
    EndTime date default(getdate()) not null,--结束时间
    ResMoney decimal(18,2) check(ResMoney>=0) default(0) not null,--研发金额
    ResState int default(1) check(ResState=1 or ResState=2)--研发状态 1研发中 2研发完成
)
go
select * from ResearchInfo
insert into ResearchInfo values('酒店管理系统','提高门店客流量，打造网上一站式订房系统','七瑾','2018.6.12','2019.6.20',40000,2)
insert into ResearchInfo values('高校数字化管理平台','为方便教师管理，实时网上教务管理系统','新IT','2017.5.12','2018.5.20',50000,2)
insert into ResearchInfo values('书店管理系统','为更好的进行图书管理，增加图书销售量，实现网上购书','致远','2018.5.12','2019.5.20',20000,2)
insert into ResearchInfo values('医疗管理系统','让医患关系更贴近','代码都敲对','2018.5.12','2019.5.20',20000,2)
insert into ResearchInfo values('商城系统','类似淘宝，拼多多购物网站','棒棒棒','2019.10.20','',30000,1)


if exists(select * from sys.procedures where name='sel_ResearchInfo')
drop proc sel_ResearchInfo
go
--存储过程
create proc sel_ResearchInfo(@Resname varchar(50) ='',@ResState int=0)
as
declare @strsql varchar(max)
set @strsql='select * from ResearchInfo where Resname like ''%'+@Resname+'%'''
if @ResState<>0
set @strsql=@strsql+'and ResState='+CONVERT(varchar,@ResState)
exec (@strsql)
go
exec sel_ResearchInfo '',0

--研发详情表 DetailsInfo
if exists(select * from sys.tables where name='DetailsInfo')
drop table DetailsInfo
GO

create table DetailsInfo(
   DetId int primary key identity(1,1),--主id
   DetName varchar(200),--研发人员
   DetContent varchar(500),--项目简介
   UseMoney decimal(18,2) check(UseMoney>=0) default(0) not null,--已用资金
   DetPlan varchar(50)not null,--进度
   ResId int  references ResearchInfo(ResId)--外键研发表 总资金 项目名称 内容，组名
)

go
select * from DetailsInfo 


insert into DetailsInfo values ('杨申，谷相搏，李彬辉，代梦丽，顾家瑄，于发光','让顾客更了解酒店，实时观察到房间的动态以及信息。',38000,'100%',1)
insert into DetailsInfo values ('杨申','用户查看前台信息',10000,'100%',1)
insert into DetailsInfo values ('谭顺顺，潘武豪，田松茂，董雅敏，王洋，张建行','数字化管理学生信息，实现线上教务系统。',50000,'100%',2)
insert into DetailsInfo values ('于超越，石金涛，李浩东，陈路明','跟随时代把书店搬到线上，更直观的了解到书的种类以及更新动态。',20000,'100%',3)
insert into DetailsInfo values ('冯琦，许备备，朱思南，彭林，李梦凡，张文政','数字化医疗平台，实现线上挂号，线上缴费等目的节约患者时间。',20000,'100%',4)
insert into DetailsInfo values ('张三，李四，王五，豆豆，里斯','线上商城，省时省力，信息量大，种类多，供顾客足不出户选择喜欢商品。',26000,'80%',5)
select ResearchInfo.Resname,ResearchInfo.ResGroup,ResearchInfo.ResMoney, ResearchInfo.ResIntroduce,DetailsInfo.*from ResearchInfo,DetailsInfo
where  ResearchInfo.ResId=DetailsInfo.ResId and DetailsInfo.ResId=1
go

if exists(select * from sys.procedures where name='sel_DetailsInfo')
drop proc sel_DetailsInfo
go
--存储过程
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

--销售表SaleInfo
if exists(select * from sys.tables where name='SaleInfo')
drop table SaleInfo
GO

create table SaleInfo(
   SaleId int primary key identity(1,1),--销售id
   GroupName varchar(50) not null,--组名
   SaleContent varchar(50),--销售内容
   SaleMoney decimal(18,2) check(SaleMoney>=0) default(0) not null,--销售金额
   DepId int references DepartmentInfo(DepId),--部门 部门表外键
)
go
--SELECT * FROM SaleInfo
select SaleInfo.*,DepartmentInfo.Dep from SaleInfo,DepartmentInfo where DepartmentInfo.DepId=SaleInfo.DepId
INSERT INTO SaleInfo VALUES('创新组','酒店管理系统',60000,4)
INSERT INTO SaleInfo VALUES('增值组','高校数字化管理平台',70000,4)
INSERT INTO SaleInfo VALUES('改变组','书店管理系统',90000,4)
INSERT INTO SaleInfo VALUES('冲锋组','医疗管理系统',100000,4)
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


--个人销售表PersonSaleInfo
if exists(select * from sys.tables where name='PersonSaleInfo')
drop table PersonSaleInfo
GO
create table PersonSaleInfo(
  PerId int primary key identity(1,1),--个人销售id
  InfoId int references  InfoTable(InfoId),   --员工表外键 字段  姓名 部门  
  PerContent VARCHAR(500),--销售内容
  PerMoney decimal(18,2) check(PerMoney>=0) default(0) not null,--销售金额
  ConMoney decimal(18,2) check(ConMoney>=0) default(0) not null,--消费金额
)
go


INSERT INTO PersonSaleInfo VALUES(5,'酒店管理系统',10000,200)
INSERT INTO PersonSaleInfo VALUES(6,'高校数字化管理平台',20000,200)
SELECT InfoTable.InfoName,PersonSaleInfo.*FROM InfoTable,DepartmentInfo,PersonSaleInfo 
WHERE InfoTable.InfoId=PersonSaleInfo.InfoId 

--财务表（收入）IncomeInfo
if exists(select * from sys.tables where name='IncomeInfo')
drop table IncomeInfo
GO
create table IncomeInfo(
   IncomeId int  primary key identity(1,1),--
 IncomMoney decimal(18,2) check(IncomMoney>=0) default(0) not null, --金额
IncomForm varchar(50),--来源 
)
go

insert into IncomeInfo values('22000','酒店管理系统')
insert into IncomeInfo values('20000','高校数字化管理平台')


select * from IncomeInfo
--------------------------------------------------------插入数据









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

