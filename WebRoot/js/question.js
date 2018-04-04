var res;
function getQuestion(){
	var questionTime=$('#questionTime').val();
	$.ajax({
		type:"GET",
		url:"GuestionToHtml",
		data:"n="+questionTime,
		datatype:"text/json",
		success:function(result){
			$("#result").attr({ disabled: "value" });
			res=result;
			$('#question').text("");
			for(var i=0;i<result.length;i++){
				if(i%2==0){
					$('#question').append('<li class="list-group-item col-md-6 fl" style="height: 50px;">'
							+'<div class="form-group fl">'
							+'<label for="inputEmail3" class="col-sm-4 control-label" style="margin-top: 5px;">'+result[i].topic+'</label>'
							+'<div class="col-sm-1">'
							+'<input type="number" style="width: 100px;" class="form-control"  '+'id="'+'q'+i+'"'+'  placeholder="答案">'
							+'</div>'
							+'</div>'
							+'</li>');  
				}else{
					$('#question').append('<li class="list-group-item col-md-6 fr" style="height: 50px;">'
							+'<div class="form-group fl">'
							+'<label for="inputEmail3" class="col-sm-4 control-label" style="margin-top: 5px;">'+result[i].topic+'</label>'
							+'<div class="col-sm-1">'
							+'<input type="number" style="width: 100px;" class="form-control"  '+'id="'+'q'+i+'"'+'  placeholder="答案">'
							+'</div>'
							+'</div>'
							+'</li>'); 
				}
				
			}
		},
		error:function(result){
			alert("服务器出现异常");
		}
	});
	
}