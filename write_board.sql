create table write_board(
	bnum number not null, --번호
	bname varchar2(50) not null,	--이름
	catecode varchar2(30) not null,	--분류
	bdes varchar(500) null,		--설명
	bimg varchar(200) null,		--이미지
	bdate date default sysdate,	--등록날짜
	primary key(bnum)
	
);
create sequence write_board_seq;

alter table write_board drop column serves;
alter table write_board add(readcount number(8,0)); --조회수
alter table write_board add(cooktime varchar2(50)); --요리시간
alter table write_board add(serving varchar2(50)); --몇인분
alter table write_board add(difficult varchar2(50)); --난이도
alter table write_board add(temperature varchar2(50)); --조리온도
alter table write_board add(writer varchar2(50));  -- 작성자
alter table write_board add(thumbimg varchar(200));  -- 썸네일
alter table write_board add(title varchar(200));  -- 제목

alter table write_board modify(bdes varchar(4000));


-- bdes 사이즈가 작아서 크게 올리기위한 방법
alter table write_board add(bdes2 clob);
update WRITE_BOARD set bdes2 = bdes;
alter table write_board drop column bdes;
alter table write_board rename column bdes2 to bdes;

create table board_method(
	
)

create table board_category (
    cateName     varchar2(20)    not null,
    cateCode     varchar2(30)    not null,
    cateCodeRef  varchar2(30)    null,
    primary key(cateCode),
    foreign key(cateCodeRef) references board_category(cateCode)
);


-- alter table [ 테이블 이름 ] add
--    constraint [ 제약조건 이름 ]
--    foreign key ([ 참조할 컬럼 이름 ])
--        references [ 참조되는 테이블 이름 ]([ 참조되는 컬럼 이름 ]); 

insert into BOARD_CATEGORY (cateName, cateCode) values('인스턴트','100');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('햄버거','101','100');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('피자','102','100');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('소세지','103','100');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('라면','104','100');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('떡볶이','105','100');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('치킨','106','100');

insert into BOARD_CATEGORY (cateName, cateCode) values('파스타','200');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('까르보나라','201','200');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('토마토','202','200');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('알레 본골레','203','200');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('오일','204','200');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('크림','205','200');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('명란젓','206','200');

insert into BOARD_CATEGORY (cateName, cateCode) values('한식','300');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('밥/죽/떡','301','300');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('찌개/국/탕','302','300');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('볶음/무침/구이','303','300');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('김치/젓갈','304','300');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('차','305','300');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('간식','306','300');

insert into BOARD_CATEGORY (cateName, cateCode) values('고기','400');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('소고기','401','400');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('돼지고기','402','400');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('양고기','403','400');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('흑염소','404','400');


select level, cateName, cateCode, cateCodeRef from board_category
    start with cateCodeRef is null connect by prior cateCode = cateCodeRef;
-- 카테고리의 계층에 맞게 level값이 커지는 구조입니다. 이 쿼리를 이용하면 level값만 확인해도 상위/하위를 구분할 수 있습니다.

    


