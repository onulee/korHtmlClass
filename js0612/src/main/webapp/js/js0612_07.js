/**
 *  for문
 */
// 입력한 숫자까지 합을 구하시오.
// 50 1-50까지, 10 1-10까지
var input = Number(prompt("처음 숫자를 입력하세요.","0"));
var input2 = Number(prompt("마지막 숫자를 입력하세요."));
// 1,100 100,1
// Math.min(), Math.max()
// var num,var num2
var num = Math.min(input,input2);
var num2 = Math.max(input,input2);

//삼항식
/*
num = (input<input2)?input:input2;
num2 = (input>input2)?input:input2;
*/

var sum=0;
for(var i=num;i<=num2;i++){
	if(i%2!=0){
		sum += i;
	}
}

document.write("1-100까지의 숫자 합 : ",sum);