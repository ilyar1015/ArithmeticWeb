<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<title>【四则运算】</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/common.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<div class="nav width100">
		<div class="nav_t width1200 ma">
			<P>四则运算</P>
		</div>
	</div>
	<div style="clear: both;"></div>
	<div class="connect width100">
		<div class="table width60 ma ">
			<ul class="width60 ma enn">
				<li>
					<h2 class="width60 ma tc">注册个人信息</h2>
				</li>
				<li class="width60 ma tc">
					姓名：
					<input type="text" name="nicename"></input>
				</li>
				<li class="width60 ma tc">
					学号：
					<input type="text" name="nicename"></input>
				</li>
				<li class="width60 ma tc">
					密码：
					<input type="password" name="nicename"></input>
				</li>
				<li class="width60 ma tc">
					确认密码：
					<input type="password" name="nicename"></input>
				</li>
			</ul>
		</div>
	</div>
	<div class="footer width100">
		<div class="footer-t width80 ma">
			 
		</div>
	</div>
</body>
</html>