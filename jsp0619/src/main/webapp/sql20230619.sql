select * from member where name like '%홍%' ;
select * from member where id='aaa' and pw='1111';

insert into member values(
'hhh','1111','김유신','010-8888-8888'
);

commit;

select * from member order by id desc;

select * from emp;

desc emp;

select * from emp;

select * from member;

delete member where id='abc';

select * from member where id='aaa' and pw='1111';

update member set pw='2222',name='홍길국',phone='010-1234-1234'
where id='aaa';

rollback;

--commit;

create table board (
bno number(4) primary key,
id varchar2(20),
btitle varchar2(100),
bcontent varchar2(2000),
bdate date default sysdate,
bhit number(4) default 0,
bgroup number(4),
bstep number(4),
bindent number(4),
bfile varchar2(100)
);

select board_seq.nextval from dual;

select board_seq.currval from dual;


insert into board values(
board_seq.nextval,'aaa','공지사항 알림','홈페이지가 새롭게 오픈되었습니다.',sysdate,
0,board_seq.currval,0,0,''
);

commit;

select * from board;
