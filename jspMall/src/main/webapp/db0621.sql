select * from board;

update board set btitle='���� 444' where bno=11;

update board 
set btitle='���� �ƴ�111',bcontent='�ɱ׷� �������'
where bno=11;
select * from board;

commit;

update board set bhit=bhit+1 where bno=9;

select * from board order by bgroup desc,bstep asc;




