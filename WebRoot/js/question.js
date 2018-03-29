function getQuestion(){
	var i=2;
	alert("准备开始");
	$.ajax({
		type:"GET",
		url:"servlet/GuestionToHtml",
		datatype:"text/json",
		success:function(result){
			alert("请求成功");
			i=1;
		},
		error:function(result){
			alert(result);
			i=0;
		}
	});
}