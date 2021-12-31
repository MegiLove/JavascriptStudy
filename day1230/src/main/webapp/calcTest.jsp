<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function calcAdd(){
		a=document.getElementById("num1").value;
		b=document.getElementById("num2").value;
		result= Number(a)+Number(b);
		document.getElementById("add").innerHTML=result;
	}
	function calcMinus(){
		a=document.getElementById("num1").value;
		b=document.getElementById("num2").value;
		result= Number(a)-Number(b);
		document.getElementById("minus").innerHTML=result;
	}
	function calcMulti(){
		a=document.getElementById("num1").value;
		b=document.getElementById("num2").value;
		result= Number(a)*Number(b);
		document.getElementById("multi").innerHTML=result;
	}
	function calcDivide(){
		a=document.getElementById("num1").value;
		b=document.getElementById("num2").value;
		result= Number(a)/Number(b);
		document.getElementById("divide").innerHTML=result;
	}
</script>
</head>
<body>
	수1:<input type="text" id="num1"><br>
	수2:<input type="text" id="num2"><br>
	<button onclick="calcAdd()">더하기</button><span id="add"></span><br>
	<button onclick="calcMinus()">빼기</button><span id="minus"></span><br>
	<button onclick="calcMulti()">곱하기</button><span id="multi"></span><br>
	<button onclick="calcDivide()">나누기</button><span id="divide"></span><br>
</body>
</html>