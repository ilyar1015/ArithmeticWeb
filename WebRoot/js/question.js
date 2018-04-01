var res;
function getQuestion(){
	var questionTime=$('#questionTime').val();
	$.ajax({
		type:"GET",
		url:"GuestionToHtml",
		data:"n="+questionTime,
		datatype:"text/json",
		success:function(result){
			res=result;
			$('#question').text("");
			for(var i=0;i<result.length;i++){
				$('#question').append("<p style=\" border:solid 1px red\">"+result[i].topic+"</p>"); 
				$('#question').append("<p style=\" border:solid 1px blue\">"+result[i].result+"</p>"); 
			}
		},
		error:function(result){
			alert("服务器出现异常");
		}
	});
}