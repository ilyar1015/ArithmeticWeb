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
	<link rel="stylesheet" type="text/css" href="../css/common.css">
	<link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
	<div class="nav width100">
		<div class="nav_t width1200 ma">
			<P>四则运算</P>
		</div>
	</div>
	<div style="clear: both;"></div>
		<div class="connect width100">
			<div class="login width80 ma">
				<div class="login-sub width60 ma">
					<form method="post" action="login.js">  
        <div class="xiaqu">
        	<p><label class="label_input">用户名</label><input type="text" id="		username" class="text_field"/></p>  
        	<p><label class="label_input">密码</label><input type="text" id="	password" class="text_field"/></p>  
        </div>
        <div id="login_control">  
            <input type="button" id="btn_login" value="登录" onclick="login();"/>  
            <a id="newpeople" href="newpeople.html">注册</a>  
        </div>  
    </form>  
				</div>
			</div>
		</div>
	</div>
	<div class="footer width100">
		<div class="footer-t width80 ma">
			
		</div>
	</div>
</body>
</html>