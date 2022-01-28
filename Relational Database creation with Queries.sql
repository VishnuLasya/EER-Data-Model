spool 'D:\Spring_2021\CS_504_Prof.Ping Deng\extract.txt'
set echo on;

drop table Movie2 cascade constraints;
drop table Critic2 cascade constraints;
drop table Review2 cascade constraints;
drop table Actor2 cascade constraints;
drop table Production_Company2 cascade constraints;
drop table Domestic_Movie cascade constraints;
drop table Foreign_Movie cascade constraints;
drop table ForeignMovie_Language cascade constraints; 
drop table Comedy cascade constraints;
drop table Drama cascade constraints;
drop table Action cascade constraints;
drop table Horror cascade constraints;
drop table Critic2_Phone_number cascade constraints;
drop table Production_Company2_Phone_No cascade constraints;
drop table Produced_by cascade constraints;




create table Movie2
(
Movie_id integer,
ReleaseDate date,
Title Varchar(30),
Rating float,
RunningTime_in_minutes float,
Director varchar(20),
primary key (Movie_id)
);

insert into Movie2 values(10001,To_date('1993-12-09','YYYY-MM-DD'), 'Jurassic Park',4.2,70.60, 'Colin Trevorrow');
insert into Movie2 values(10002,To_date('1994-11-22','YYYY-MM-DD'), 'The Dark Knight',4.0,120, 'Christopher');
insert into Movie2 values(10003,To_date('1995-10-17','YYYY-MM-DD'), 'The Godfather',3.9,89, 'Francis Ford');
insert into Movie2 values(10004,To_date('1996-09-27','YYYY-MM-DD'), 'Angry Men',4.3,200, 'Sidney Lumet');
insert into Movie2 values(10005,To_date('1997-03-11','YYYY-MM-DD'), 'Inception',4.9,70.4, 'Christopher');
insert into Movie2 values(10006,To_date('1999-07-04','YYYY-MM-DD'), 'Inception2',4.7,90, 'Christopher');
insert into Movie2 values(10007,To_date('1979-06-16','YYYY-MM-DD'), 'Inception3',4.6,100, 'Christopher');

insert into Movie2 values(10010,To_date('2001-11-22','YYYY-MM-DD'), 'Clueless',1.0,79, 'Christopher');
insert into Movie2 values(10011,To_date('2005-02-17','YYYY-MM-DD'), 'OfficeSpace',3.9,89, 'James Ford');
insert into Movie2 values(10012,To_date('1997-07-07','YYYY-MM-DD'), 'GirlsTrip',2.3,98, 'Sidney Francis');
insert into Movie2 values(10013,To_date('2010-08-01','YYYY-MM-DD'), 'Kind Heart',2.9,70.67, 'Bond');
insert into Movie2 values(10014,To_date('1983-10-24','YYYY-MM-DD'), 'Holy Grail',3.0,169, 'Scott');
insert into Movie2 values(10015,To_date('1969-06-26','YYYY-MM-DD'), 'Step Brothers',2.6,200.10, 'Rowling');



insert into Movie2 values(10021,To_date('2012-09-05','YYYY-MM-DD'), 'Man Of Steel',2.9,189, 'John Woo');
insert into Movie2 values(10022,To_date('1987-10-18','YYYY-MM-DD'), 'Extraction',3.0,140, 'James');
insert into Movie2 values(10023,To_date('2014-03-29','YYYY-MM-DD'), 'Hanna',2.6,170, 'John Woo');

insert into Movie2 values(10041,To_date('1990-10-10','YYYY-MM-DD'), 'Godfather',3.8,150, 'Francis Ford');
insert into Movie2 values(10051,To_date('1934-03-27','YYYY-MM-DD'), 'Dark',4.7,160, 'Thug Ford');
insert into Movie2 values(10061,To_date('1967-09-04','YYYY-MM-DD'), 'Fun',4.8,170, 'Henry');
insert into Movie2 values(10062,To_date('1967-10-04','YYYY-MM-DD'), 'Missing',4.8,170, 'Harry');
select * from Movie2;

-----------------------------------------------------

create table Critic2
(

Critic_id integer,
Critic_Name varchar(20),
primary key (Critic_id)

);

insert into Critic2 values(20001,'James');
insert into Critic2 values(20002,'James');
insert into Critic2 values(20021,'Roger Albert');
insert into Critic2 values(20022,'Thomas Cook');
insert into Critic2 values(20023,'Roger Albert');
select * from Critic2;


----------------------------------------------------------------

create table Review2
(
Movie_id integer,
Critic_id integer,
evaluation_byCritic integer,
primary key (Movie_id,Critic_id),
foreign key(Movie_id) references Movie2(Movie_id),
foreign key(Critic_id) references Critic2(Critic_id),
check(evaluation_byCritic in (0,1,2,3,4,5))
);

insert into Review2 values(10021,20021,5);
insert into Review2 values(10022,20022,4);
insert into Review2 values(10023,20023,3);

select * from Review2;

-----------------------------------------------------------------------------------

create table Actor2
(
Actor_id integer,
Actor_Name varchar(20),
Movie_id integer,
primary key (Actor_id),
foreign key(Movie_id) references Movie2(Movie_id)
);
insert into Actor2 values(30000,'Pauly Shore',10010);
insert into Actor2 values(30001,'Pauly Shore',10011);
insert into Actor2 values(30002,'Pauly Shore',10012);
insert into Actor2 values(30003,'Adam Sandler',10013);
insert into Actor2 values(30004,'Pauly Shore',10014);
insert into Actor2 values(30005,'Jim Carry',10015);

insert into Actor2 values(30006,'Pauly',10014);
insert into Actor2 values(30007,'Jim ',10015);
insert into Actor2 values(30008,'George ',10014);
insert into Actor2 values(30009,'Edward ',10015);
insert into Actor2 values(30010,'Lousi ',10015);
insert into Actor2 values(30011,'Linda',10014);
insert into Actor2 values(30012,'Choo Choo',10015);
select * from Actor2;

--------------------------------------------------------------------------------


create table Production_Company2
(
P_Company_id integer,
P_Company_Name varchar(20),
StreetAddress varchar(20),
City varchar(20),
P_State varchar(20),
Zipcode integer,
primary key (P_Company_id)
);

insert into Production_Company2 values(40001,'Dharma Productions','34-90w','Faifax','Virginia',22030);
insert into Production_Company2 values(40002,'Castle Entertainment','6709 Hidh Street','Los Angeles','California',90007);
insert into Production_Company2 values(40003,'Rock Entertainment','90 James hill Ln','Los Angeles','California',90255);
insert into Production_Company2 values(40004,'Mike Entertainment','45 Wilson hill Ln','Tempe','Arizona',80019);
insert into Production_Company2 values(40005,'Bing Crosby','56 Cherry hill Ln','Los Angeles','California',90023);
insert into Production_Company2 values(40006,'Joseph Films','7281 Park','Boulder','Colorado',60015);
insert into Production_Company2 values(40007,'Troma Films','3632 Lincoln','Hollywood','Florida',30003);



select * from Production_Company2;
-----------------------------------------------------------------------------

Create table Domestic_Movie
(
Movie_id integer,

foreign key(Movie_id) references Movie2(Movie_id),
primary key(Movie_id)

);

insert into  Domestic_Movie(Movie_id) values(10041) ;
select * from Domestic_Movie;
---------------------------------------------------------------------------


Create table Foreign_Movie
(
Movie_id integer,
English_Subtitles varchar(20),
foreign key(Movie_id) references Movie2(Movie_id),
check(English_Subtitles in ('Yes','No')),
primary key(Movie_id)
);

insert into  Foreign_Movie values(10051,'Yes');
select * from Foreign_Movie;


------------------------------------------------------------------

Create table ForeignMovie_Language
(
Movie_id integer,
F_Movie_language varchar(20),
primary key(Movie_id,F_Movie_language),
foreign key(Movie_id) references Movie2(Movie_id),
check(F_Movie_language not in ('English'))
);
insert into  ForeignMovie_Language values(10051,'Spanish');
select * from ForeignMovie_Language;

---------------------------------------------------------------------

Create table Comedy
(
Movie_id integer,
Degree_of_Funniness integer,
foreign key(Movie_id) references Movie2(Movie_id),
check(Degree_of_Funniness in (1,2,3,4,5)),
primary key(Movie_id)
);

insert into Comedy values(10010,4);
insert into Comedy values(10011,2);
insert into Comedy values(10012,1);
insert into Comedy values(10013,3);
insert into Comedy values(10014,1);
insert into Comedy values(10015,5);


select * from Comedy;
-----------------------------------------------------------------

Create table Drama
(
Movie_id integer,
ShortDescription varchar(32),
foreign key(Movie_id) references Movie2(Movie_id),
primary key(Movie_id)
);

insert into Drama values(10061,'love story');
select * from Drama;
---------------------------------------------------------

Create table Action
(
Movie_id integer,
foreign key(Movie_id) references Movie2(Movie_id),
primary key(Movie_id)
);
insert into Action values(10021);
insert into Action values(10022);
insert into Action values(10023);


select * from Action;
----------------------------------------------------------


Create table Horror
(
Movie_id integer,
foreign key(Movie_id) references Movie2(Movie_id),
primary key(Movie_id)
);


insert into Horror values(10001);
insert into Horror values(10002);
insert into Horror values(10003);
insert into Horror values(10004);
insert into Horror values(10005);
insert into Horror values(10006);
insert into Horror values(10007);

select * from Horror;


-----------------------------------------------------------

create table Critic2_Phone_number
(
Critic_id Integer,
Phone_No  integer,
primary key(Critic_id,Phone_No),
foreign key(Critic_id) references Critic2(Critic_id)

);

insert into Critic2_Phone_number values(20001,7049892948);
insert into Critic2_Phone_number values(20002,7049892948);
select * from Critic2_Phone_number;
------------------------------------------------------------------------------

create table Production_Company2_Phone_No
(
P_Company_id integer,
P_Phone_No  integer,
primary key(P_Company_id,P_Phone_No),
foreign key(P_Company_id) references Production_Company2(P_Company_id)

);

insert into Production_Company2_Phone_No values(40001,2349892888);
select * from Production_Company2_Phone_No;
----------------------------------------------------------------------

create table Produced_by
(
Movie_id integer,
P_Company_id integer,
primary key(Movie_id,P_Company_id),
foreign key(Movie_id) references Movie2(Movie_id),
foreign key(P_Company_id) references Production_Company2(P_Company_id)

);


insert into Produced_by values(10001,'40001');
insert into Produced_by values(10002,'40002');
insert into Produced_by values(10003,'40003');
insert into Produced_by values(10004,'40004');
insert into Produced_by values(10005,'40005');
insert into Produced_by values(10006,'40006');
insert into Produced_by values(10007,'40007');
select * from Produced_by;
-----------------------------------------------------
--1 

select P_Company_Name from Production_Company2 where City ='Los Angeles';
--2
select M.Director from Movie2 M, Horror H, Produced_by P, Production_Company2 PC where M.Movie_id=H.Movie_id and P.Movie_id=M.Movie_id and P.P_Company_id=PC.P_Company_id and PC.P_Company_Name='Troma Films';
--3
select M.Title from Movie2 M,Comedy C,Actor2 A where M.Movie_id=C.Movie_id and A.Movie_id=M.Movie_id and C.Degree_of_Funniness=1 and A.Actor_Name='Pauly Shore';
--4
select M.Title from Movie2 M,Review2 R,Critic2 C,Action A where M.Movie_id=A.Movie_id and R.Movie_id=M.Movie_id and R.Critic_id=C.Critic_id and M.Director='John Woo' and C.Critic_Name='Roger Albert';
--5
select M.Movie_id , M.Title from Movie2 M,Actor2 A where A.Movie_id=M.Movie_id  group by M.Movie_id, M.Title having count(M.Movie_id)>3 ;

--6
select count(M.Movie_id) as Total_Movies_with_5_Star_Evaluation from Movie2 M,Review2 R where M.Movie_id=R.Movie_id and R.evaluation_byCritic=5;

commit;


