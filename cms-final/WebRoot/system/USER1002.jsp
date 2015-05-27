<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">

    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<META HTTP-EQUIV="content-type" CONTENT="text/html; charset=gb2312">
	<META HTTP-EQUIV="content-script-type" CONTENT="text/JavaScript">
	<META HTTP-EQUIV="content-style-type" CONTENT="text/css">
	<title>用户详细</title>
	<link rel="stylesheet" href="<%=basePath%>/css/cjpm.css">
  </head>
  
  
  <SCRIPT LANGUAGE="javaScript">
<!--
function save()
{
	alert("保存成功！");
}

function back()
{
	history.back();
}
  
-->
</SCRIPT>
  
  <body BACKGROUND="<%=basePath%>/image/bg.gif">
    	<FORM NAME="idFrmMain" ID="idmig0102" METHOD="POST"  ACTION="" ONSUBMIT="return false"> 
<table border="0" width="100%" id="table1" cellspacing="0"  cellpadding="2"  bgcolor="gray">
	<tr>
  	<td class="headerbar61" width="15%" colspan="1">用户详细</td>
    <td class="headerbar63" width="85%" colspan="1">
      <input type="button" name="save70302002" onClick="javascript:save()" value=" 保 存 ">&nbsp;
      <input type="button" name="back70302003" onClick="javascript:back()" value=" 返 回 ">
    </td>
  </tr>
</table>

<table border=0 cellspacing=0 cellpadding=2 width="100%" height="5">
	<tr>
		<td></td>
	</tr>
</table>

<table border="0" width="100%" id="table1" cellspacing="1"  cellpadding="2"  bgcolor="gray">
 
	<tr>
  	<td class="textbar81" width="15%" colspan="1">用户登录号</td>
    <td class="textbar01" width="85%" colspan="1"><input name="name" value="BSDDRP" size="20"></td>
  </tr>          
  <tr>
  	<td class="textbar81" width="15%" colspan="1">用户姓名</td>
    <td class="textbar01" width="85%" colspan="1"><input name="name" value="张三" size="20"></td>
  </tr>          
	<tr>
  	<td class="textbar81" width="15%" colspan="1">用户密码</td>
    <td class="textbar01" width="85%" colspan="1"><input type="password" name="leixing" value="123123" size="21"></td>
  </tr>      
	<tr>
  	<td class="textbar81" width="15%" colspan="1">用户简介</td>
    <td class="textbar01" width="85%" colspan="1"><textarea name="describe"  style="width:352px">男，东北人士</textarea>
     </td>
  </tr>  
	         
	 
</table>

<table border=0 cellspacing=0 cellpadding=0 width="100%" height=5>
	<tr>
		<td></td>
	</tr>
</table>
</FORM>
  </body>
</html>
