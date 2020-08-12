create table foodblog(
	userid varchar2(50) not null primary key,
	password varchar2(100) not null,
	username varchar2(100) not null,
	email varchar2(50) not null
);

create sequence seq_foodblog;