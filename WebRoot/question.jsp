<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
  <head>
    <title></title>
    <meta name="keywords" content="keyword1,keyword2,keyword3">
    <meta name="description" content="this is my page">
    <link rel="stylesheet" type="text/css" href="css/question.css">
	<script type="text/javascript" src="js/jquery/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="js/question.js"></script>
	
	
  </head>
  
  <body>
  	<select id="questionTime">
	  <option value ="1">1</option>
	  <option value ="2">2</option>
	  <option value ="3">3</option>
	  <option value ="4">4</option>
	  <option value ="5">5</option>
	  <option value ="6">6</option>
	  <option value ="7">7</option>
	  <option value ="8">8</option>
	  <option value ="9">9</option>
	  <option value ="10">10</option>
	  <option value ="11">11</option>
	  <option value ="12">12</option>
	  <option value ="13">13</option>
	  <option value ="14">14</option>
	  <option value ="15">15</option>
	  <option value ="16">16</option>
	  <option value ="17">17</option>
	  <option value ="18">18</option>
	  <option value ="19">19</option>
	  <option value ="20">20</option>
	</select>
    <a href="#" id="button" onclick="getQuestion()">点击这里即可获取题目</a>
    <p id="question"></p>
  </body>
</html>
