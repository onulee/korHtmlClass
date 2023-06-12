/**
 *  성적처리 프로그램
 */
 var htmlData = "";
	       
 for(var i=0;i<10;i++){
	 // 81~100 랜덤함수를 이용해서 국어,영어,수학 점수를 입력받아 합계,평균을 추가해서 출력하시오.
	 var kor = Math.floor(Math.random()*20)+81; //81~100
	 var eng = Math.floor(Math.random()*20)+81;
	 var math = Math.floor(Math.random()*20)+81;
	 var total = kor+eng+math;
	 var avg = (total/3.0).toFixed(2);
	 
	 htmlData += "<tr>";
	 htmlData += "<td>"+(i+1)+"</td>";
	 htmlData += "<td>홍길동</td>";
	 htmlData += "<td>"+kor+"</td>";
	 htmlData += "<td>"+eng+"</td>";
	 htmlData += "<td>"+math+"</td>";
	 htmlData += "<td>"+total+"</td>";
	 htmlData += "<td>"+avg+"</td>";
	 htmlData += "<td>1</td>";
	 htmlData += "<td>2023-06-12</td>";
	 htmlData += "<td>관리자</td>";
	 htmlData += "</tr>";
 }

 document.getElementById('tbody').innerHTML=htmlData;
 
 
 /* htmlData += "<h2>학생성적 처리프로그램</h2>";
 htmlData += "<table>";
 htmlData += "<colgroup>";
 htmlData += "<col width='8%'>";
 htmlData += "<col width='14%'>";
 htmlData += "<col width='8%'>";
 htmlData += '<col width="8%">';
 htmlData += '<col width="8%">';
 htmlData += '<col width="10%">';
 htmlData += '<col width="7%">';
 htmlData += '<col width="15%">';
 htmlData += '<col width="12%">';
 htmlData += '</colgroup>';
 htmlData += "<tr>";
 htmlData += '<th>학번</th>';
 htmlData += '<th>이름</th>';
 htmlData += '<th>국어</th>';
 htmlData += '<th>영어</th>';
 htmlData += '<th>수학</th>';
 htmlData += '<th>합계</th>';
 htmlData += '<th>평균</th>';
 htmlData += '<th>등수</th>';
 htmlData += '<th>작성일</th>';
 htmlData += '<th>작성자</th>';
 htmlData += '</tr>';*/
 
 //htmlData += '</table>';
  
 //document.write(htmlData);
 
		       
		       
		       
		      
		       
		       
		       
		       
		       
		     