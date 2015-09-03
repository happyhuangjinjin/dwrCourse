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
		<script type='text/javascript' src='dwr/interface/JavaTypeTest.js'></script>

		<script type="text/javascript">
  
  
  function ByteType(){
 	//  JavaTypeTest.IntType(1, function ( value ){
   //			alert("ByteType " + value);
   //});
   
   JavaTypeTest.ByteType(1,{
   		callback : function(value){
   			alert("ByteType " + value);
   		},
   		errorHandler : function(error){
   			alert(error);
   		},
   		timeout : 1000
   });
  }
  
  
  function ShortType(){
   JavaTypeTest.ShortType(15, function ( value ){
   			alert("ShortType " + value);
   });
  }
  
  function IntType(){
   JavaTypeTest.IntType(1, function ( value ){
   			alert("IntType " + value);
   });
  }
  
  function LongType(){
   JavaTypeTest.LongType(23, function ( value ){
   			alert("LongType " + value);
   });
  }
  
  function FloatType(){
   JavaTypeTest.FloatType(23.89, function ( value ){
   			alert("FloatType " + value);
   });
  }
  
  function DoubleType(){
   JavaTypeTest.DoubleType(35.9, function ( value ){
   			alert("DoubleType " + value);
   });
  }
  
  
  function CharType(){
   JavaTypeTest.CharType('c', function ( value ){
   			alert("CharType " + value);
   });
  }
  
  function BooleanType(){
   JavaTypeTest.BooleanType(true, function ( value ){
   			alert("BooleanType " + value);
   });
  }
  
  function StringType(){
   JavaTypeTest.StringType("huang", function ( value ){
   			alert("StringType " + value);
   });
  }
 
  
  
  
  
  </script>
	</head>

	<body>
	<input value="ByteType" onclick="ByteType();" type="button" />
		<br>
		<br>
		<input value="ShortType" onclick="ShortType();" type="button" />
		<br>
		<br>
		<input value="IntType" onclick="IntType();" type="button" />
		<br>
		<br>
		<input value="LongType" onclick="LongType();" type="button" />
		<br>
		<br>
		<input value="FloatType" onclick="FloatType();" type="button" />
		<br>
		<br>
		<input value="DoubleType" onclick="DoubleType();" type="button" />
		<br>
		<br>
		
		<input value="CharType" onclick="CharType();" type="button" />
		<br>
		<br>
		<input value="BooleanType" onclick="BooleanType();" type="button" />
		<br>
		<br>
		
		<input value="StringType" onclick="StringType();" type="button" />
		<br>
		<br>
	</body>
</html>
