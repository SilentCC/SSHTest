<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
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
	 <script src="http://cdn.bootcss.com/jquery/3.0.0/jquery.min.js"></script>
	<script>
	function fun(){
	
		alert("ok");
		$.post("login2",{name:$("#name").val(),pwd:$("#pwd").val()},function(data){
		
				alert(data);
				var d = eval("(" + data + ")"); 
				
				if(d.login=="success"){
				
				window.location.href = "success.jsp";
				}
				else
					window.location.href = "index.jsp";
		},"json");
	}
	</script>
  </head>
  
  <body>
    This is my JSP page. <br>
    
    普通的Form表格<br>
    <form action="login" method="post">
    	用户：<input name="name" type="text"></input>
    	密码：<input name="pwd" type="password"></input>
    	<input type="submit" value="登录"></input>
    </form>
    
    Struts2标签库<br>
   <s:form action="login">
		<s:textfield label="用户" name="name" ></s:textfield>
		<s:password label="密码" name="pwd" ></s:password>
		<s:submit type="submit" value="登录" ></s:submit>
	</s:form>
	
	ajax 向后台传数据<br>
	 
    	用户：<input id="name" name="name" type="text"></input>
    	密码：<input id="pwd" name="pwd" type="password"></input>
    	<input type="submit" value="登录" onclick="fun()"></input>
    
	
  </body>
</html>
