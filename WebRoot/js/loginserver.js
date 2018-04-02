function login(){
	var name=$('#user_name').val();
	var password=$('#user_password').val();
	$.ajax({
		type:"GET",
		url:"Login",
		data:"name="+name+"&password="+password,
		datatype:"text/json",
		success:function(result){
			if(result.massage){
				$('#login_massage').text("登陆成功");
			}else{
				$('#login_massage').text("登陆失败");
			}
			
		},
		error:function(result){
			alert("服务器出现异常");
		}
	});
}