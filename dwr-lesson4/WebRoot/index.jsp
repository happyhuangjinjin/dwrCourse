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
		<script type='text/javascript'
			src='dwr/interface/JavaCollectionTest.js'></script>

		<script type="text/javascript">
  
  
  	function getMap(){
  		
  		JavaCollectionTest.getMap(function(value){
  			alert(value.key1);
  			alert(value["key2"]);
  		});
  	}
  	
  	
  	function setMap(){
  		var map = {"key1" : "hjj", "key2": "fxk"};
  		JavaCollectionTest.setMap(map, function(){
  				
  		});
  	}
  	
  	
  	function getList(){
  		JavaCollectionTest.getList(function(value){
  			for(var i=0; i<value.length; i++){
  				alert(value[i]);
  			}
  		});
  	}
  	
  	
  	function setList(){
  		var list = ["111", "23ddd", "111"];
  		JavaCollectionTest.setList(list ,function(){
  		
  		});
  	}
  	
  	
  	function getSet(){
  		JavaCollectionTest.getSet(function(value){
  			for(var i=0; i<value.length; i++){
  				alert(value[i]);
  			}
  		});
  	}
  	
  	
  	function setSet(){
  		var set = ["222", "ffff","222"];
  		JavaCollectionTest.setSet(set, function(){
  		
  		});
  	}
  </script>
	</head>

	<body>
		<input value="getMap" onclick="getMap();" type="button" />
		<br>
		<br>
		<input value="setMap" onclick="setMap();" type="button" />
		<br>
		<br>
		<input value="getList" onclick="getList();" type="button" />
		<br>
		<br>
		<input value="setList" onclick="setList();" type="button" />
		<br>
		<br>
		<input value="getSet" onclick="getSet();" type="button" />
		<br>
		<br>
		<input value="setSet" onclick="setSet();" type="button" />
		<br>
		<br>
	</body>
</html>
