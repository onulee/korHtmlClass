var num = Number(prompt("1번째 숫자입력을 해주세요."));
var num2 = Number(prompt("2번째 숫자입력을 해주세요."));

//두 숫자를 입력받아 큰수를 출력하시오.
//var result = a>b?"정답입니다.":"오답입니다.";
var result = num>num2?num:num2;
document.write("더 큰수는 : ",result);
document.write("<br>");

document.write(typeof(num),"<br>");
document.write(typeof(num2),"<br>");
document.write(num+num2,"<br>");
//document.write(Number(num)+Number(num2),"<br>");
