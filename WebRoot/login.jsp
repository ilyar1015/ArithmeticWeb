<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="js/login.js"></script>
	<link rel="stylesheet" type="text/css" href="css/login.css">

  </head>
  
  <body>
    <table>
    	<tr>
	    	<td>用户名</td>
	    	<td><input type="text" id="user_name"></td>
    	</tr>
    	<tr>
    		<td>密码</td>
    		<td><input type="password" id="user_password"></td>
    	</tr>
    	<tr>
    		<td><button type="reset">重置</button></td>
    		<td><button type="button" id="login" onclick="login()">登陆</button></td>
    	</tr>
    </table>
    <p id="login_massage"></p>
  </body>
</html>
