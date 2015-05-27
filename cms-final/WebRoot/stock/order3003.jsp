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
	<title>出库单详细</title>
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
		  	<td class="headerbar61" width="15%" colspan="1">出库单详细</td>
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
		  	<td class="textbar81" width="15%" colspan="1">货号</td>
		   <td class="textbar01" width="85%" colspan="1">
		    	<input name="name" value="BR1703"  style="width:210px;"></td>
		  </tr>
			<tr>
		  	<td class="textbar81" width="15%" colspan="1">色号</td>
		    <td class="textbar01" width="85%" colspan="1"><select name="" style="width:210px "> 
		               <option value="" selected="selected">请选择</option> 
		                <option value="1">大红色</option> 
		                <option value="2">浅红色</option> 
		                <option value="3">紫红色</option> 
						<option value="4">纯白色</option> 
		                <option value="5">米白色</option> 
						<option value="6">深蓝色</option> 
		                <option value="7">淡蓝色</option> 
						<option value="8">黑色</option> 
		                <option value="9">棕色</option> 
		              </select></td>
		  </tr>          
		  <tr>
		  	<td class="textbar81" width="15%" colspan="1">尺码</td>
		    <td class="textbar01" width="85%" colspan="1"><select name="" style="width:210px "> 
		               <option value="" selected="selected">请选择</option> 
		                <option value="150">150</option> 
		                <option value="155">155</option> 
		                <option value="160">160</option> 
						<option value="165">165</option> 
		                <option value="170">170</option> 
						<option value="175">175</option> 
		                <option value="180">180</option> 
						<option value="185">185</option> 
		                <option value="190">190</option> 
		              </select></td>
		  </tr>  
		  	<tr>
		  	<td class="textbar81" width="15%" colspan="1">库存数量</td>
		    <td class="textbar01" width="85%" colspan="1"><input  name="leixing" value="200" style="width:210px;"></td>
		  </tr>         
			<tr>
		  	<td class="textbar81" width="15%" colspan="1">出库数量</td>
		    <td class="textbar01" width="85%" colspan="1"><input  name="leixing" value="200" style="width:210px;"></td>
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
