<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String id = request.getParameter("id");

String database_id = "aaa";

String msg = "";	// 출력될 데이터
if(database_id.equals(id)){
	msg = "사용할 수 없는 id입니다.";
}
else{
	msg = "사용할 수 있는 id입니다.";
}

out.println(msg);

//밑에 방식으로 써도 된다z
//<%=msg

String database_name = "홍길동";
int database_number = 1002; 

out.println(database_name+"-"+database_number);
%>
