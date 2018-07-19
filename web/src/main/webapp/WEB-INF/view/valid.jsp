<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	pageContext.setAttribute("basePath", basePath);
%>
<html>
<head>
<title>下线</title>
<meta charset="UTF-8">
<base href="<%=basePath%>">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/head.css">
<link rel="SHORTCUT ICON" href="${pageContext.request.contextPath}/static/images/icon.ico">
<link rel="BOOKMARK" href="${pageContext.request.contextPath}/static/images/icon.ico">
<style type="text/css">
	.main {
		width: 980px;
		margin: 0px auto 0px;
		height: 300px;
	}
	.tips {
		text-align: center;
		margin-top: 50px;
	}
	.warn {
		font-size: 20px;
		color: red;
	}
	.link {
		text-align: center;
		font-size: 20px;
	}
	#second {
		color: green;
		font-weight: bold;
	}
</style>
</head>
<body>
	<!--头部-->
	<jsp:include page="share/head.jsp"></jsp:include>

	<div class="main">
		<div>&nbsp;</div>
		<div class="tips">
			<img src="images/success.jpg">
			<span class="warn">您的账号已在他处登录，您被迫下线...</span>
		</div>
		<div class="link">
			<span id="second">3</span>
			秒后转向登录页面
		</div>
	</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/script/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function() {
		var $second = $("#second"),
			num = 0;
		var id = setInterval(function() {
			if ((num = parseInt($second.html())) > 0) {
				$second.html(-- num);
			} else {
				clearInterval(id);
				window.location.href = "${pageContext.request.contextPath}/login";
			}
		}, 1000);
	});
</script>
</html>