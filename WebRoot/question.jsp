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
    <a href="#" id="button" onclick="getQuestion()">请点击这里即可查看</a>
    <p id="error"></p>
  </body>
</html>
