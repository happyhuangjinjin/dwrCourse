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
		<script type='text/javascript' src='dwr/interface/JavaArrayTest.js'></script>

		<script type="text/javascript">
  
  
  function byteArrayType(){
 	//  JavaTypeTest.IntType(1, function ( value ){
   //			alert("ByteType " + value);
   //});
   
   var byteValue = [65, 66];
   JavaArrayTest.ByteArrayType(byteValue ,{
   		callback : function( value ){
   			for(var i=0; i<value.length; i++){
   				alert("ByteArrayType " + value[i]);
   			}
   		},
   		errorHandler : function(error){
   			for(var ex in error){
   				alert(ex);
   			}
   		},
   		timeout : 1000
   });
  }
  
  
  function ShortArrayType(){
  var shortValue = [14, 16];
   JavaArrayTest.ShortArrayType(shortValue, function ( value ){
   			for(var i=0; i<value.length; i++){
   				alert("ShortArrayType " + value[i]);
   			}
   });
  }
  
  function IntArrayType(){
  var intValue = [13, 14];
   JavaArrayTest.IntArrayType(intValue, function ( value ){
   			for(var i=0; i<value.length; i++){
   				alert("IntArrayType " + value[i]);
   			}
   });
  }
  
  function LongArrayType(){
  var longValue = [11111, 22222];
   JavaArrayTest.LongArrayType(longValue, function ( value ){
  	 		for(var i=0; i<value.length; i++){
   				alert("LongArrayType " + value[i]);
   			}
   });
  }
  
  function FloatArrayType(){
  var floatValue = [1.111, 12.0];
   JavaArrayTest.FloatType(floatValue, function ( value ){
   			for(var i=0; i<value.length; i++){
   				alert("FloatArrayType " + value[i]);
   			}
   });
  }
  
  function DoubleArrayType(){
  var doubleValue = [11.2, 122.2];
   JavaArrayTest.DoubleType(doubleValue, function ( value ){
   		for(var i=0; i<value.length; i++){
   				alert("DoubleArrayType " + value[i]);
   			}
   });
  }
  
  
  function CharArrayType(){
  	var charValue = ['a', 'b'];
   	JavaArrayTest.CharType(charValue, function ( value ){
  	 		for(var i=0; i<value.length; i++){
   					alert("CharArrayType " + value[i]);
   			}
   			
   	});
  }
  
  function BooleanArrayType(){
   var booleanValue = [true, false];
   JavaArrayTest.BooleanArrayType(booleanValue, function ( value ){
  			 for(var i=0; i<value.length; i++){
   				alert("BooleanArrayType " + value[i]);
   			}
   });
  }
  
  function StringArrayType(){
  	var StringValue = ['asdfa', 'badfasf'];
   JavaArrayTest.StringArrayType(StringValue, function ( value ){
    	for(var i=0; i<value.length; i++){
   			alert("StringArrayType " + value[i]);
   		}
   });
  }
 
  
  
  
  
  </script>
	</head>

	<body>
	<input value="ByteArrayType" onclick="byteArrayType();" type="button" />
		<br>
		<br>
		<input value="ShortArrayType" onclick="ShortArrayType();" type="button" />
		<br>
		<br>
		<input value="IntArrayType" onclick="IntArrayType();" type="button" />
		<br>
		<br>
		<input value="LongArrayType" onclick="LongArrayType();" type="button" />
		<br>
		<br>
		<input value="FloatArrayType" onclick="FloatArrayType();" type="button" />
		<br>
		<br>
		<input value="DoubleArrayType" onclick="DoubleArrayType();" type="button" />
		<br>
		<br>
		<input value="CharArrayType" onclick="CharArrayType();" type="button" />
		<br>
		<br>
		<input value="BooleanArrayType" onclick="BooleanArrayType();" type="button" />
		<br>
		<br>
		<input value="StringArrayType" onclick="StringArrayType();" type="button" />
		<br>
		<br>
	</body>
</html>
