<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
   String context = request.getContextPath();
%>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기 완료</title>
<!-- 부트스트랩 CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">	<!-- 부트스트랩 icon CDN -->
<link href="../common/style.css" rel="stylesheet" type="text/css">	<!-- style.css link -->
</head>
<style>

/*----------------상단부---------------*/

.bluebox1_pwsch{
	
	position:relative;
	
	width: 250px;
	height: 50px;
	left: 320px;
	top: 50px;
	border:none;
}

</style>
<body>
<div class="logo_idsch">
	<div class="header col-lg-offset-5 col-lg-2">
		<a href="<%=context %>/dy/main.do" class="logo"><img src="../common/images/jobsound_logo.png"  align class="img_sori"></a>
	</div>
</div>	
	
	<hr>
	
	<div class="wrapper_idsch">
		<div style="margin-left:200px;">
		<h6>비밀번호 찾기가 완료되었습니다.</h6>
		</div>
		<div class="midbox_idsch">
			<div class="graybox_idsch">
				<div class="blueline_idsch"><p align = "center">${passwd }</p></div>
			</div>
			<div class="whitebox_idsch">
				<div class="bluebox1_pwsch"><button class="btn btn-primary btn-lg btn-block" type="submit" onclick="location.href='main.do'">&nbsp로그인하기&nbsp</button></div>
			</div>
		</div>
	</div>
															
<!-- footer 영역 -->
<%@include file ="../common/footer.jsp" %>

</body>
</html>