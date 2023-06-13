/**
 *  함수
 */
function input(){
	var num = Number(prompt("숫자를 입력하세요."));
	var num2 = Number(prompt("2번째 숫자를 입력하세요."));
	console.log(num);
	var result = add(num,num2);
	console.log("결과값 : ",result);
	sub(num,num2);
}


function add(num,num2){
	return num+num2;
}


function sub(num,num2){
	console.log("빼기 결과값 : ",(num-num2));
}


