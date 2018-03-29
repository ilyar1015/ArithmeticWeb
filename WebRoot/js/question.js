function getQuestion(){
	var i=2;
	$.ajax({
		type:"GET",
		url:"GuestionToHtml",
		datatype:"text/json",
		success:function(result){
			$('#question').text(result.topic1); 
			$('#answer').text(result.result1); 
		},
		error:function(result){
			alert("服务器出现异常");
		}
	});
}