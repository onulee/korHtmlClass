select * from board;

update board set btitle='¹ÎÁö 444' where bno=11;

update board 
set btitle='¹ÎÁö ¾Æ´Ô111',bcontent='°É±×·ì ¾ÆÀÌÁî¿ø'
where bno=11;
select * from board;

commit;

update board set bhit=bhit+1 where bno=9;

select * from board order by bgroup desc,bstep asc;




