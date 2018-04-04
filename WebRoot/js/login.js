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
				
			}else{
				alert("账号或者密码错误");
			}
			$('#login_massage').text("有响应");
		},
		error:function(result){
			alert("服务器出现异常");
		}
	});
}


function register(){
	var name=$('#register_name').val();
	var pass_one=$('#register_pass_1').val();
	var pass_two=$('#register_pass_1').val();
	if(pass_one===pass_two){
		$.ajax({
			type:"GET",
			url:"Login",
			data:"name="+name+"&password="+password,
			datatype:"text/json",
			success:function(result){
				
				$('#login_massage').text("有响应");
			},
			error:function(result){
				alert("服务器出现异常");
			}
		})
	}
}