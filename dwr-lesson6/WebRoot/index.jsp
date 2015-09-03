<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'index.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


		<script type='text/javascript' src='dwr/engine.js'></script>
		<script type='text/javascript' src='dwr/util.js'></script>
		<script type='text/javascript' src='dwr/interface/springDataBaseService.js'></script>

		<script type="text/javascript">
  
  		function insertUser(){
  			var id = dwr.util.getValue("userid");
  			var username = dwr.util.getValue("username");
  			var password = dwr.util.getValue("userpassword");
  			var userdata = {
  				id:id, 
  				username:username, 
  				password: password
  			};
  			springDataBaseService.insert(userdata, function (value){
  				alert(value);
  			});
  		}
  		
  		function findUser(){
  			var id = dwr.util.getValue("findid");
  			springDataBaseService.find(id, function (u){
  				//for(var i in u){
  				//	alert(i);
  				//}
  				alert(u.id);
  				alert(u.username);
  				alert(u.password);
  			});
  		}
  	</script>
	</head>

	<body>
		Id:
		<input id="userid" type="text">
		<br />
		用户名：
		<input id="username" type="text">
		<br />
		密码：
		<input id="userpassword" type="password">
		<br />
		<input type="button" onclick="insertUser();" value="插入" />
		<br />
		<br />
		输入查找的用户Id:
		<input id="findid" type="text">
		<br />
		<input type="button" onclick="findUser();" value="查找" />
	</body>
</html>
