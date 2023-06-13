/**
 * 
 */
function stuScore(){
	var name = prompt("이름을 입력하세요.");
	var kor = Number(prompt("국어점수를 입력하세요.")); //Number정수형,실수형 모두 가능
	var eng = Number(prompt("영어점수를 입력하세요."));
	var math = Number(prompt("수학점수를 입력하세요."));
	var total = kor+eng+math;
	var avg = (total/3.0).toFixed(2);
	
	var htmlData="";
	htmlData += "<tr>";
	htmlData += "<td>"+name+"</td>";
	htmlData += "<td>"+kor+"</td>";
	htmlData += "<td>"+eng+"</td>";
	htmlData += "<td>"+math+"</td>";
	htmlData += "<td>"+total+"</td>";
	htmlData += "<td>"+avg+"</td>";
	htmlData += "</tr>";
	
	//document.getElementById("tbody").append = htmlData;
	document.getElementById("tbody").innerHTML = htmlData;
	
	console.log("합계 : ",kor+eng+math);
	console.log("합계 : ",(kor+eng+math)/3.0);
}
