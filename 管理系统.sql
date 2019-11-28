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
  InfoDate date not null,--��������
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
select count(*) from InfoTable where DepId = 3



insert  into InfoTable values('��ӨӨ',18,'��','2001.11.1','147852369632541785','12345123454','����ʡ֣����','11231234121@qq.com',getdate(),'','2',2,2,2,'7000',1)
insert  into InfoTable values('λΰ��',20,'Ů','1999.10.1','145236525632458712','12345123456','����ʡ֣����','10231234121@qq.com',getdate(),'','3',1,3,3,'7000',1)
insert  into InfoTable values('�ܶ���',27,'��','1992.6.1','147852369963258741','12345123455','����ʡ֣����','10231234123@qq.com',getdate(),'','3',2,5,5,'5000',1)
insert  into InfoTable values('������',24,'Ů','1995.5.1','147852369987456123','12345123453','����ʡ֣����','10231234124@qq.com',getdate(),'','3',1,4,4,'6000',1)
insert  into InfoTable values('���Ǿ�',20,'��','1999.10.1','147852369987456714','12345123483','����ʡ֣����','10231234174@qq.com',getdate(),'','1',1,6,6,'4000',1)
insert  into InfoTable values('����',20,'��','1999.7.1','147852369987456185','12345123473','����ʡ֣����','10231234824@qq.com',getdate(),'','3����',1,6,7,'3000',1)
insert  into InfoTable values('���ಫ',22,'��','1997.12.13','213784216424624242','4134213411','����ʡ֣����','142143242424@qq.com','','','1',3,1,3,'6000',1)
insert  into InfoTable values('����',20,'Ů','1989.10.1','234321456789231234','9876543212','����ʡ֣����','1431412421@qq.com',getdate(),'','3',3,3,3,'7000',1)
insert  into InfoTable values('����',27,'��','1992.6.1','3242142432453545','34523231231','����ʡ֣����','523424244124@qq.com',getdate(),'','2',3,5,5,'5000',1)
insert  into InfoTable values('������',24,'Ů','1995.5.1','234213131231234535','54623423123','����ʡ֣����','15343234324@qq.com',getdate(),'','3',3,4,4,'6000',1)
insert  into InfoTable values('�˼Ҭu',20,'��','1999.10.1','1234123131424345','12323123','����ʡ֣����','2345324543535@qq.com',getdate(),'','1',3,5,6,'4000',1)
insert  into InfoTable values('�ڷ���',20,'��','1999.7.1','23412312313434252','5643223','����ʡ֣����','23453533333335@qq.com',getdate(),'','3����',3,5,6,'3000',1)
insert  into InfoTable values('̷˳˳',18,'��','2001.11.1','123423133432423','345423113','����ʡ֣����','324532455345@qq.com','','','1',3,3,2,'7000',1)
insert  into InfoTable values('�����',20,'Ů','1999.10.1','75432112342324213','43523123142','����ʡ֣����','345353535353@qq.com',getdate(),'','2',3,4,3,'7000',1)
insert  into InfoTable values('����ï',27,'��','1992.6.1','21231324231234234','5523422323','����ʡ֣����','53453532@qq.com',getdate(),'','2',3,4,6,'5000',1)
insert  into InfoTable values('������',24,'Ů','1995.5.1','2433453212314134','6542324332','����ʡ֣����','2353543453523@qq.com',getdate(),'','3',3,5,6,'6000',1)
insert  into InfoTable values('�Ž���',20,'��','1999.10.1','2432452342655635','653524123','����ʡ֣����','14141344245434@qq.com',getdate(),'','2',3,5,6,'4000',1)
insert  into InfoTable values('����',20,'��','1999.7.1','413546454231331','34524154623','����ʡ֣����','456423242313@qq.com',getdate(),'','3����',3,5,6,'3000',1)
insert  into InfoTable values('�ڳ�Խ',18,'��','2001.11.1','134321235335','3214364342','����ʡ֣����','42342312@qq.com','','','1',3,3,4,'7000',1)
insert  into InfoTable values('ʯ����',20,'Ů','1999.10.1','45362342411231','13253443','����ʡ֣����','124321312@qq.com',getdate(),'','2',3,4,7,'7000',1)
insert  into InfoTable values('��ƶ�',27,'��','1992.6.1','3453424131231534','124124346','����ʡ֣����','345312312@qq.com',getdate(),'','2',4,4,6,'5000',1)
insert  into InfoTable values('��·��',24,'Ů','1995.5.1','546312123123131','3425463242','����ʡ֣����','3452312123@qq.com',getdate(),'','2',4,5,6,'6000',1)
insert  into InfoTable values('����',20,'��','1999.10.1','5345231231231423','2523534634','����ʡ֣����','3452313123@qq.com',getdate(),'','3',4,5,6,'4000',1)
insert  into InfoTable values('����',20,'��','1999.7.1','4231231423531231','45645241312','����ʡ֣����','345212132@qq.com',getdate(),'','3����',4,6,7,'3000',1)
insert  into InfoTable values('��˼��',27,'��','1992.6.1','443531231252313','3523121423','����ʡ֣����','4565234213@qq.com',getdate(),'','1',4,3,5,'5000',1)
insert  into InfoTable values('����',24,'Ů','1995.5.1','3245423123123131','4352312452','����ʡ֣����','2314312313@qq.com',getdate(),'','2',4,5,7,'6000',1)
insert  into InfoTable values('���η�',21,'��','1998.10.1','123252341224354','1231252342','����ʡ֣����','34312324@qq.com',getdate(),'','3',4,5,6,'4000',1)
insert  into InfoTable values('������',22,'��','1997.7.1','531244345124','435634123','����ʡ֣����','456453422@qq.com',getdate(),'','3����',4,5,6,'3000',1)

insert  into InfoTable values('�����',20,'��','1999.10.1','24324523124635','623412123','����ʡ֣����','24532145434@qq.com',getdate(),'','2',4,5,6,'4000',1)
insert  into InfoTable values('����',20,'Ů','1999.7.1','4135123231331','31234623','����ʡ֣����','456231232313@qq.com',getdate(),'','3����',4,5,6,'3000',1)
insert  into InfoTable values('�ޱ�',18,'Ů','2001.11.1','134321232335','3214234342','����ʡ֣����','423345312@qq.com','','','1',4,3,4,'7000',1)
insert  into InfoTable values('�����',20,'Ů','1999.10.1','453612311231','112343','����ʡ֣����','12312312@qq.com',getdate(),'','2',4,4,7,'7000',1)
insert  into InfoTable values('����',27,'��','1992.6.1','3453424134231534','1242344346','����ʡ֣����','3434512312@qq.com',getdate(),'','2',4,4,6,'5000',1)
insert  into InfoTable values('���',24,'Ů','1995.5.1','5463121233131','342123242','����ʡ֣����','312323@qq.com',getdate(),'','2',4,5,6,'6000',1)
insert  into InfoTable values('����',20,'��','1999.10.1','5345231531231423','25223434634','����ʡ֣����','34513123@qq.com',getdate(),'','3',4,5,6,'4000',1)
insert  into InfoTable values('����',27,'Ů','1992.6.1','4435312313452313','35223421423','����ʡ֣����','4534534213@qq.com',getdate(),'','1',4,3,5,'5000',1)
insert  into InfoTable values('����',24,'Ů','1995.5.1','3245423134523131','432312452','����ʡ֣����','2314234313@qq.com',getdate(),'','2',4,5,7,'6000',1)
insert  into InfoTable values('С��',21,'Ů','1998.10.1','123252345224354','12352342','����ʡ֣����','2344@qq.com',getdate(),'','3',4,5,6,'4000',1)
insert  into InfoTable values('���ļ�',22,'Ů','1997.7.1','531234545124','432344123','����ʡ֣����','456423422@qq.com',getdate(),'','3����',4,5,6,'3000',1)
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
  MoneyState int check(MoneyState=1 or MoneyState=2 ), --״̬ ȫ�� 1�� 2��
  Moneysta int check(Moneysta=1 or Moneysta=2)--���ʽ���״̬ 1�ѽ��� 2δ����
)

insert into MoneyTable values(1,0,'200',1,1)
insert into MoneyTable values(2,3,'0',2,1)
insert into MoneyTable values(3,5,'0',2,1)
insert into MoneyTable values(4,0,'200',1,2)
insert into MoneyTable values(5,0,'200',1,2)
insert into MoneyTable values(6,5,'0',2,1)
insert into MoneyTable values(7,2,'0',2,2)
insert into MoneyTable values(8,0,'200',1,2)
select * from MoneyTable

if exists(select * from sys.procedures where name='Sel_MoneyTable')
drop proc Sel_MoneyTable
go
create proc Sel_MoneyTable(@InfoName varchar(20)='',@MoneyState int=0,@Moneysta int=0)
as
declare @sql varchar(max)
set @sql='select InfoTable.InfoName,MoneyTable.* from InfoTable,MoneyTable where InfoTable.InfoId=MoneyTable.InfoId and InfoTable.InfoName like ''%'+@InfoName+'%'''
if @MoneyState<>0
set @sql=@sql+' and MoneyState='+CONVERT(varchar,@MoneyState)
if @Moneysta<>0
set @sql=@sql+' and Moneysta='+CONVERT(varchar,@Moneysta)
exec(@sql)
go
exec Sel_MoneyTable '',0,0

/*��Ա�򿨱� ClockInfo*/

if exists(select * from sys.tables where name='ClockInfo')
drop table ClockInfo
GO
create table ClockInfo(
   ClockId int primary key identity(1,1),--��id
   Userid int references UserLogin(Userid),--��½�����
   ClockTime varchar(50) ,--��ʱ��
   ClockState int check(ClockState=1 or ClockState=2)--״̬ 1�Ѵ� 2 δ��
)
go

insert  into ClockInfo values(5,'2019/11/29 07:58:25',1)
insert  into ClockInfo values(6,'',2)
insert  into ClockInfo values(7,'2019/11/29 07:59:25',1)
insert  into ClockInfo values(4,'2019/11/29 07:59:30',1)
insert  into ClockInfo values(3,'',2)
insert  into ClockInfo values(2,'2019/11/29 07:55:25',1)
insert  into ClockInfo values(1,'2019/10/29 07:56:25',1)

select UserLogin.UserName, ClockInfo.*from UserLogin,ClockInfo where ClockInfo.Userid=UserLogin.Userid

--Ա����ٱ�LeaveInfo
if exists(select * from sys.tables where name='LeaveInfo')
drop table LeaveInfo
GO
create table LeaveInfo(
	LeaveId int primary key identity(1,1),--���id
	Userid int references UserLogin(Userid),--��½�����
	DepId int references DepartmentInfo(DepId),--���ű����
	LeaveTime datetime default(getdate()) not null,--���ʱ��
	LeTime datetime  not null,--����ʱ��
	LeaveReason varchar(100),--���ԭ��
	LeaveState int check(LeaveState=1 or LeaveState=2)--���״̬ 1δ��� 2�����
)
go

insert into LeaveInfo values (6,4,'2019/9/9 8:00:00','2019/9/11 8:00:00','�ؼҲμӻ���',1)
insert into LeaveInfo values (7,4,'2019/9/10 12:00:00','2019/9/14 12:00:00','�����м���',2)


if exists(select * from sys.procedures where name='Sel_LeaveInfo')
drop proc Sel_LeaveInfo
go
create proc Sel_LeaveInfo(@DepId int=0,@LeaveState int=0)
as
declare @sql varchar(max)
set @sql='select LeaveInfo.*,UserLogin.UserName,DepartmentInfo.Dep from LeaveInfo,UserLogin,DepartmentInfo where LeaveInfo.Userid=UserLogin.Userid and LeaveInfo.DepId=DepartmentInfo.DepId'
if @DepId<>0
set @sql=@sql+' and LeaveInfo.DepId='+CONVERT(varchar,@DepId)
if @LeaveState<>0
set @sql=@sql+' and LeaveState='+CONVERT(varchar,@LeaveState)
exec(@sql)
go
exec Sel_LeaveInfo 0,2

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
insert into ReportInfo values ('��ˮ��','��˾�Ҳ���ˮ������ˮ�����û��Ӧ...','2019.11.12 15:00:00',3,1000,1)
insert into ReportInfo values ('�յ�','�з���������ǰ���յ�����,���ؼ�û��Ӧ...','2019.10.12 12:00:00',3,2000,1)
insert into ReportInfo values ('����','�绰����...','2019.10.22 9:00:00',4,500,2)
insert into ReportInfo values ('����','���Ϻ��ֹ�˾Ǣ̸ҵ��...','2019.10.27 13:00:00',4,2000,2)
select ReportInfo.*,DepartmentInfo.Dep from ReportInfo,DepartmentInfo where DepartmentInfo.DepId=ReportInfo.DepId

--������洢����
if exists(select * from sys.procedures where name='Sel_ReportInfo')
drop proc Sel_ReportInfo
go
create proc Sel_ReportInfo(@RepName varchar(50)='',@ReportState int=0)
as
declare @sql varchar(max)
set @sql='select ReportInfo.*,DepartmentInfo.Dep from ReportInfo,DepartmentInfo where DepartmentInfo.DepId=ReportInfo.DepId and RepName like ''%'+@RepName+'%'''
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
   AccResMoney decimal(18,2) check(AccResMoney>=0) not null,-- �з��ܽ��
   AccMoney decimal(18,2) not null,--������
   AccName varchar(10)not null--������Ա����
  
)
go
select * from AccoutInfo
insert into AccoutInfo values ('10�·�',350000,100000,200000,1150000,'��ӨӨ')
insert into AccoutInfo values ('9�·�',350000,120000,300000,1000000,'��ӨӨ')
insert into AccoutInfo values ('11�·�',350000,80000,250000,900000,'��ӨӨ')
insert into AccoutInfo values ('8�·�',400000,20000,40000,1800000,'��ӨӨ')

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
    EndTime varchar(100) ,--����ʱ��
    ResMoney decimal(18,2) check(ResMoney>=0) default(0) not null,--�з����
    ResState int default(1) check(ResState=1 or ResState=2)--�з�״̬ 1�з��� 2�з����
)
go

insert into ResearchInfo values('�Ƶ����ϵͳ','����ŵ����������������һվʽ����ϵͳ','���','2018.6.12 12:00:00','2019.8.20 18:00:00',40000,2)
insert into ResearchInfo values('��У���ֻ�����ƽ̨','Ϊ�����ʦ����ʵʱ���Ͻ������ϵͳ','��IT','2019.5.12 8:00:00','2019.9.20 8:00:00',50000,2)
insert into ResearchInfo values('������ϵͳ','Ϊ���õĽ���ͼ���������ͼ����������ʵ�����Ϲ���','��Զ','2018.5.12 8:00:00','2019.10.20 16:00:00',20000,2)
insert into ResearchInfo values('ҽ�ƹ���ϵͳ','��ҽ����ϵ������','���붼�ö�','2018.5.12','2019.8.20',20000,2)
select * from ResearchInfo

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
insert into DetailsInfo values ('����','�û��鿴ǰ̨��Ϣ...',10000,'100%',1)
insert into DetailsInfo values ('���ಫ','��̨����...',20000,'100%',1)
insert into DetailsInfo values ('����','��½Ȩ��...',7000,'100%',1)
insert into DetailsInfo values ('������','��½ҳ��...',8000,'100%',1)
insert into DetailsInfo values ('�˼Ҭu','�����ĵ�...',9999,'100%',1)
insert into DetailsInfo values ('�ڷ���','ppt����...',30000,'100%',1)
insert into DetailsInfo values ('̷˳˳�������������ï���������������Ž���','���ֻ�����ѧ����Ϣ��ʵ�����Ͻ���ϵͳ��',50000,'100%',2)
insert into DetailsInfo values ('̷˳˳','�û��鿴ǰ̨��Ϣ...',10000,'100%',2)
insert into DetailsInfo values ('�����','��ʦ����ҳ��...',20000,'100%',2)
insert into DetailsInfo values ('����ï','ѧ������ҳ��...',7000,'100%',2)
insert into DetailsInfo values ('������','���ҳ��...',8000,'100%',2)
insert into DetailsInfo values ('����','��½Ȩ������...',9999,'100%',2)
insert into DetailsInfo values ('�Ž���','���Ȩ��ҳ��...',30000,'100%',2)
insert into DetailsInfo values ('�ڳ�Խ��ʯ���Σ���ƶ�����·��','����ʱ�������ᵽ���ϣ���ֱ�۵��˽⵽��������Լ����¶�̬��',20000,'100%',3)
insert into DetailsInfo values ('�ڳ�Խ','��̨ҳ����ʾ...',10000,'100%',3)
insert into DetailsInfo values ('ʯ����','��̨Ȩ�޹���...',20000,'100%',3)
insert into DetailsInfo values ('��ƶ�','�ĵ���д...',7000,'100%',3)
insert into DetailsInfo values ('��·��','ǰ̨ҳ����ʾ...',8000,'100%',3)
insert into DetailsInfo values ('��������������˼�ϣ����֣����η���������','���ֻ�ҽ��ƽ̨��ʵ�����ϹҺţ����Ͻɷѵ�Ŀ�Ľ�Լ����ʱ�䡣',20000,'100%',4)
insert into DetailsInfo values ('����','�ĵ���д...',10000,'100%',4)
insert into DetailsInfo values ('����','��̨����ʵ��...',20000,'100%',4)
insert into DetailsInfo values ('��˼��','��½ ע��ҳ��...',7000,'100%',4)
insert into DetailsInfo values ('����','ppt����...',8000,'100%',4)
insert into DetailsInfo values ('���η�','�û��鿴ǰ̨��Ϣ...',9999,'100%',4)
insert into DetailsInfo values ('������','��ҳ����...',30000,'100%',4)

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
  PerName varchar(100),--��½����� �ֶ�  ���� ����  
  PerContent VARCHAR(500),--��������
  PerMoney decimal(18,2) check(PerMoney>=0) default(0) not null,--���۽��
  ConMoney decimal(18,2) check(ConMoney>=0) default(0) not null,--���ѽ��
)
go


INSERT INTO PersonSaleInfo VALUES('���Ǿ�','�Ƶ����ϵͳ',10000,200)
INSERT INTO PersonSaleInfo VALUES('����','��У���ֻ�����ƽ̨',20000,200)
INSERT INTO PersonSaleInfo VALUES('��ƶ�','��У���ֻ�����ƽ̨',20000,300)
INSERT INTO PersonSaleInfo VALUES('��·��','�Ƶ����ϵͳ',30000,200)
INSERT INTO PersonSaleInfo VALUES('����','��У���ֻ�����ƽ̨',10000,200)
select * from PersonSaleInfo

--��������룩IncomeInfo
if exists(select * from sys.tables where name='IncomeInfo')
drop table IncomeInfo
GO
create table IncomeInfo(
   IncomeId int  primary key identity(1,1),--
   InMonth varchar(200),
 IncomMoney decimal(18,2) check(IncomMoney>=0) default(0) not null, --���
IncomForm varchar(50),--��Դ 
)
go

insert into IncomeInfo values('10�·�','22000','�Ƶ����ϵͳ')
insert into IncomeInfo values('10�·�','20000','��У���ֻ�����ƽ̨')


select * from IncomeInfo
--��Ʒ�ֲ�ͼ��
if exists(select * from sys.tables where name='TuTable')
drop table TuTable
GO
create table TuTable(
   Tuid int primary key identity(1,1),
   TuCity varchar(50) not null,
   TuValue int not null,
)
insert into TuTable values('�ൺ',18)
insert into TuTable values('����',21)
insert into TuTable values('��ͨ',23)
insert into TuTable values('�Ϻ�',25)
insert into TuTable values('��̨',28)
insert into TuTable values('����',33)
insert into TuTable values('��«��',35)
insert into TuTable values('��ݸ',36)
insert into TuTable values('����',37)
insert into TuTable values('����',38)
insert into TuTable values('����',50)
insert into TuTable values('����Ͽ',53)
insert into TuTable values('�ɶ�',58)
insert into TuTable values('����',61)
insert into TuTable values('����',66)


