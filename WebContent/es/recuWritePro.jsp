<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<%
   String context = request.getContextPath();
%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${result>0 }">
	<script type="text/javascript">
		alert("글쓰기에 성공했습니다.");
		location.href="<%=context %>/es/recuBoardList.do?pageNum=${pageNum}&pageSize=${pageSize}&id=${id}";
	</script>
</c:if>
<c:if test="${result==0 }">
	<script type="text/javascript">
		alert("글쓰기에 실패하였습니다.");
		history.go(-1);
	</script>
</c:if>
	
	
</body>
</html>