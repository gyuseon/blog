create table write_board(
	bnum number not null, --��ȣ
	bname varchar2(50) not null,	--�̸�
	catecode varchar2(30) not null,	--�з�
	bdes varchar(500) null,		--����
	bimg varchar(200) null,		--�̹���
	bdate date default sysdate,	--��ϳ�¥
	primary key(bnum)
	
);
create sequence write_board_seq;

alter table write_board drop column serves;
alter table write_board add(readcount number(8,0)); --��ȸ��
alter table write_board add(cooktime varchar2(50)); --�丮�ð�
alter table write_board add(serving varchar2(50)); --���κ�
alter table write_board add(difficult varchar2(50)); --���̵�
alter table write_board add(temperature varchar2(50)); --�����µ�
alter table write_board add(writer varchar2(50));  -- �ۼ���
alter table write_board add(thumbimg varchar(200));  -- �����
alter table write_board add(title varchar(200));  -- ����

alter table write_board modify(bdes varchar(4000));


-- bdes ����� �۾Ƽ� ũ�� �ø������� ���
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


-- alter table [ ���̺� �̸� ] add
--    constraint [ �������� �̸� ]
--    foreign key ([ ������ �÷� �̸� ])
--        references [ �����Ǵ� ���̺� �̸� ]([ �����Ǵ� �÷� �̸� ]); 

insert into BOARD_CATEGORY (cateName, cateCode) values('�ν���Ʈ','100');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('�ܹ���','101','100');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('����','102','100');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('�Ҽ���','103','100');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('���','104','100');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('������','105','100');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('ġŲ','106','100');

insert into BOARD_CATEGORY (cateName, cateCode) values('�Ľ�Ÿ','200');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('�������','201','200');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('�丶��','202','200');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('�˷� ����','203','200');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('����','204','200');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('ũ��','205','200');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('�����','206','200');

insert into BOARD_CATEGORY (cateName, cateCode) values('�ѽ�','300');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('��/��/��','301','300');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('�/��/��','302','300');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('����/��ħ/����','303','300');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('��ġ/����','304','300');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('��','305','300');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('����','306','300');

insert into BOARD_CATEGORY (cateName, cateCode) values('���','400');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('�Ұ��','401','400');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('�������','402','400');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('����','403','400');
insert into BOARD_CATEGORY (cateName, cateCode, catecoderef) values('�濰��','404','400');


select level, cateName, cateCode, cateCodeRef from board_category
    start with cateCodeRef is null connect by prior cateCode = cateCodeRef;
-- ī�װ��� ������ �°� level���� Ŀ���� �����Դϴ�. �� ������ �̿��ϸ� level���� Ȯ���ص� ����/������ ������ �� �ֽ��ϴ�.

    


