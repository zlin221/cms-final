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

	<META HTTP-EQUIV="content-type" CONTENT="text/html; charset=GB2312">
	<META HTTP-EQUIV="content-script-type" CONTENT="text/JavaScript">
	<META HTTP-EQUIV="content-style-type" CONTENT="text/css">
	<title>出库单</title>
	<link rel="stylesheet" href="<%=basePath%>/css/cjpm.css"> 
	<script type="text/javascript" src="<%=basePath%>/js/cjcalendar.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/addFunction.js"></script>
  </head>
  
	 <script language="javascript">
		var CalendarWebControl = new atCalendarControl();
	</script>
	<SCRIPT LANGUAGE="javaScript">
	 
	function jsgoto(strURL)
	{
		document.forms[0].action=strURL;
		document.forms[0].submit();
	}
	
	function del(id)
	{
		if(confirm("您确定删除该条明细？")){
			alert("删除成功！");
		}
	}
	
	function goSearch(){
		document.forms[0].action="<%=basePath%>/stock/order3002.jsp";
		document.forms[0].submit();
	}
	 
	-->
	</SCRIPT>
  
  
  
  <body BACKGROUND="<%=basePath%>/image/bg.gif">
		<FORM NAME="mig0101" ID="idmig0101" METHOD="POST"  ACTION="" ONSUBMIT="return false" >
		
		<table border=0 cellspacing=0 cellpadding=2 width="100%" bgcolor="gray">
		<tr>
			<td class="headerbar61">出库单详细</td>
		
			<td class="headerbar61"><p align="right">
				<input type="button" value=" 确 认 ">
				<input type=button value=" 保 存 " onClick="JavaScript:save();">
				<input type=button value=" 返 回 " onClick="JavaScript:history.back();">
		    </p></td>	
		</tr>
		</table>
		<table border=0 cellspacing=0 cellpadding=2 width="100%" height="5">
		<tr>
			<td></td>
		</tr>
		</table>
		<table border=0 cellspacing=1 cellpadding=2 width="100%" bgcolor="gray">
		<tr>
		  <td class="textbar81" width="15%">单据号</td>
				<td class="textbar01" width="35%">
		      <input type="text" value="自动编号..." readonly style="width:200px">    </td>
		    <td class="textbar81" width="15%">单据日期</td>
				<td class="textbar01" width="35%">
					<input type="text" name="frmWRPT_OPT_DATE2_PJT70302" id="frmWRPT_OPT_DATE2_PJT70302" value="2007-06-21" readonly="readonly" size="12">
					<img src="<%=basePath%>/image/calendar.gif" width="18" height="17" onClick="CalendarWebControl.show(forms[0].frmWRPT_OPT_DATE2_PJT70302,'',forms[0].frmWRPT_OPT_DATE2_PJT70302);" title="显示日历" />    </td>
		</tr>
		<tr>
		    <td class="textbar81" width="15%">所出仓库</td>
			<td class="textbar01" width="35%">
					<select name="storeRoom" style="width:200px">
						<option value="" selected>------</option>
						<option value="1">一号仓库</option>
						<option value="2">二号仓库</option>
						<option value="3">三号仓库</option>
						<option value="4">四号仓库</option>		
					</select>    </td>
		    <td class="textbar81" width="15%">接收人</td>
			  <td class="textbar01" width="35%"><input type="text" name="khbh" style="width:200px" readonly ></td>
		</tr>
		<tr>
		    <td class="textbar81" width="15%">接收人电话</td>
						<td class="textbar01" width="35%">
		      <input type="text" value="" style="width:200px">    </td>    
		
		    <td class="textbar81" width="15%">发往地址</td>
				<td class="textbar01"  width="35%">
		      <input type="text" name="frmWRPT" value="" style="width:200px">    </td>     
		
		</tr>
		<tr>  
				<td class="textbar81" width="15%">备注</td>
		    <td class="textbar01" colspan="3" width="85%">
		    	<textarea cols="80" rows="4"></textarea>    </td>
		</tr>
		</table>
		
		<table border=0 cellspacing=0 cellpadding=0 width="100%" height=5>
		<tr>
			<td></td>
		</tr>
		</table>
		
		<table border="0" width="100%" id="table1" cellspacing="0"  cellpadding="2"  bgcolor="gray">
		                <tr>
		                    <td class="headerbar61"  colspan="1">出库单明细</td>
		                    <td class="headerbar63"  colspan="1">
		                    	<p align="right">
		                    		                    		
												<input type=button value=" 新增明细 " onClick="jsgoto('<%=basePath%>/stock/order3003.jsp');"></p>
		                    </td>                    
		                </tr>
		</table>
		
		<table id="tab0" border="0" cellspacing="1" cellpadding="2" width="100%" bgcolor="gray">
		<tr>
		<td  width="5%" class="headerbar82">序号</td>
			<td  width="20%" class="headerbar82">货号</td>
			<td  width="20%" class="headerbar82">品名</td>
			<td  width="15%" class="headerbar82">色号</td>
			<td  width="15%" class="headerbar82">尺码</td>
			<td  width="15%" class="headerbar82">数量</td>		
			<td  class="headerbar82">操作</td>
		<tr>
			<td   class="gridbar11" align="center">1</td>
			<td   class="gridbar11" align="center">BR1703</td>
			<td   class="gridbar11">中款大衣</td>
			<td   class="gridbar11">大红色</td>
			<td  class="gridbar11">155</td>
			<td   class="gridbar11" align="center">200</td>
			<td  class="gridbar11" align="center">
								<a href = "#"><img src="<%=basePath%>/image/del.gif" align="bottom" border="0" alt="删除" onClick="javascript:del('673467')" /></a></td>	
		</tr>
		<tr>
			<td   class="gridbar01" align="center">2</td>
			<td   class="gridbar01" align="center">BR1703</td>
			<td   class="gridbar01">中款大衣</td>
			<td   class="gridbar01">大红色</td>
			<td  class="gridbar01">185</td>
			<td   class="gridbar01" align="center">200</td>
			<td  class="gridbar01" align="center">
								<a href = "#"><img src="<%=basePath%>/image/del.gif" align="bottom" border="0" alt="删除" onClick="javascript:del('673467')" /></a></td>	
		</tr>
		</table>
		
			  
		
		</FORM>
  </body>
</html>
