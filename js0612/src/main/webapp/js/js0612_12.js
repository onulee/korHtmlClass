/**
 *  배열 
 */

var arr1 = ["홍길동","유관순","이순신"];
var arr2 = ["강감찬","김구"];

var result = arr1.push("김유신");

//기본for문
for(var i=0;i<arr1.length;i++){  //초기식;조건식;증감식
	document.write(arr1[i],"<br>");
}

//단순for문
for(var i of arr1){ //변수 of 배열
	document.write("배열 : ",i);
	document.write("<br>");
}
document.write(result);
console.log(arr1);



 /*
 var arr = [30,"홍길동",true,31.25];
 
 for(var i=0;i<arr.length;i++){
	 document.write(arr[i],"<br>");
 }
 
 */