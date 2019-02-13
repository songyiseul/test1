<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>


id:<input type="text" id="id" value="">

<button>확인</button>

<p id="demo">id 확인</p>



<script type="text/javascript">

$(function () {
	
	$("button").click(function () {
		alert("확인");
		
		$.ajax({
			url:"idcheck.jsp",
			type:"get",
			data:"id=" + $("#id").val(),
			success:function(data, status, xhr){
				var info = data.split("-");
				
				for(i = 0; i < info.length; i++){
					alert(info[i]);
				}
				
				
			//	alert(data.trim());	// trim 앞뒤 공백을 없애준다
				$("#demo").text(info[0].trim());
			},
			error:function(){
				alert("데이터불통!!");
			}
			
			
			
		}); 
	});
	

});

</script>



</body>
</html>