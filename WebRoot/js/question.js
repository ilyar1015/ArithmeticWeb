function getQuestion(){
	var i=2;
	alert("准备开始");
	$.ajax({
		type:"GET",
		url:"GuestionToHtml",
		datatype:"text/json",
		success:function(result){
			alert(result.question);
		},
		error:function(result){
			alert("服务器出现异常");
		}
	});
}