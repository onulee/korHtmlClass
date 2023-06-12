/**
 *  랜덤함수
 */
// let,var,const
var random = Math.floor(Math.random()*10)+1; //1-100

var input = Number(prompt("1-100까지 숫자를 입력하세요."));

if(input===random){  // 1=="1" : 같음 , 1==="1" :다름 (타입까지 같아야 함.)
	document.write("정답입니다. 정답 : ",random);
}else{
	alert("오답입니다. 정답 : "+random);
	//document.write("오답입니다. 정답 : ",random);
	location.reload();
}