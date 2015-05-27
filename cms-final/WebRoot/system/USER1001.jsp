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
	<title>用户管理</title>
	<link rel="stylesheet" href="<%=basePath%>/css/cjpm.css">
  </head>
  
  <SCRIPT LANGUAGE="javaScript">
<!--
function jsgoto()
{
	document.forms[0].action="<%=basePath%>/system/USER1002.jsp";
	document.forms[0].submit();
}
 
function del(id)
{
	if(confirm("您确定删除该条数据？")){
		alert("删除成功！");
	}
}

function goSearch(){
	document.forms[0].action="<%=basePath%>/system/USER1001.jsp";
	document.forms[0].submit();
}
 
-->
</SCRIPT>
  <body BACKGROUND="<%=basePath%>/image/bg.gif">
    	<FORM NAME="mig0101" ID="idmig0101" METHOD="POST"  ACTION="" ONSUBMIT="return false" >
          <table border=0 cellspacing=0 cellpadding=2 width="100%" bgcolor="gray">
			<tr>
				<td class="headerbar61">用户明细查询</td>
				<td class="headerbar61"><p align="right"><input type=submit value=" 查 询 " onClick="goSearch();"></p></td>
			</tr>
  </table>
			
			<table border=0 cellspacing=0 cellpadding=2 width="100%" height="5">
			<tr>
				<td></td>
			</tr>
			</table>
		  <table border=0 cellspacing=1 cellpadding=2 width="100%" bgcolor="gray">
			<tr>
				<td class="textbar81" width="15%">用户姓名</td>
				<td class="textbar01" width="35%">
					<input type="text" name="cusName" size="20">
				</td>
				<td class="textbar81" width="15%">用户登录号</td>
				<td class="textbar01" width="35%"><input type="text" name="cusNo" size="20"></td>
			</tr>
			
			</table>
<table border=0 cellspacing=0 cellpadding=2 width="100%" height="5">
	<tr>
		<td></td>
	</tr>
</table>
		    <table border="0" width="100%" id="table1" cellspacing="0"  cellpadding="2"  bgcolor="gray">
                <tr>
                    <td class="headerbar61" width="50%" colspan="1">用户明细表</td>
                    <td class="headerbar63" width="50%" colspan="1">
                   <input type="button" name="add" tabindex="1" onClick="javascript:jsgoto()" value=" 新 增 "></td>
                </tr>
            </table>

<table border=0 cellspacing=0 cellpadding=2 width="100%" height="5">
	<tr>
		<td></td>
	</tr>
</table>

      	<table border="0" width="100%" id="table1" cellspacing="0"  cellpadding="0"  bgcolor="gray">
        	<tr>
          	<td  width="100%" colspan="1">
          		<table  border="0" cellspacing="1" cellpadding="2" width="100%">
								<tr>
									<td  width="5%" class="headerbar82">序号</td>
									<td  width="35%" class="headerbar82">用户登录号</td>
									<td  width="35%" class="headerbar82">用户姓名</td>
									<td   class="headerbar82">操作</td>
								</tr>
								<tr>
									<td  class="gridbar11" align="center">1</td>
									<td  class="gridbar11" align="center"><a href="<%=basePath%>/system/USER1002.jsp">admin</a></td>
									<td  class="gridbar11" align="center"><a href="<%=basePath%>/system/USER1002.jsp">张三</a></td>
									<td  class="gridbar11" align="center">
										<a href = "#"><img src="<%=basePath%>/image/del.gif" align="bottom" border="0" alt="删除" onClick="javascript:del('673467')" /></a>									</td>
								</tr>
								<tr>
									<td  class="gridbar01" align="center">2</td>
									<td  class="gridbar01" align="center"><a href="<%=basePath%>/system/USER1002.jsp">lisi</a></td>
									<td  class="gridbar01" align="center"><a href="<%=basePath%>/system/USER1002.jsp">李四</a></td>
									<td  class="gridbar01" align="center">
										<a href = "#"><img src="<%=basePath%>/image/del.gif" align="bottom" border="0" alt="删除" onClick="javascript:del('673467')" /></a>									</td>
								</tr>
									<tr>
									<td  class="gridbar11" align="center">3</td>
									<td  class="gridbar11" align="center"><a href="<%=basePath%>/system/USER1002.jsp">wangwu</a></td>
									<td  class="gridbar11" align="center"><a href="<%=basePath%>/system/USER1002.jsp">王五</a></td>
									<td  class="gridbar11" align="center">
										<a href = "#"  ><img src="<%=basePath%>/image/del.gif" alt="删除" border="0" align="bottom"  onClick="javascript:del('673467')" /></a>									</td>
								</tr>
			  </table>
			  </td>
					</tr>
				</table>


				<table width="100%" border="0" cellpadding="1" cellspacing="2" >
        	<tr>
          	<td colspan="2" align="right" height="20"  nowrap class="textbar3" >
							&nbsp; 共3条 &nbsp; 第1/1页 &nbsp;      				<a  href="#" style="cursor:hand">首页</a>&nbsp; 
      				<a   style="cursor:hand" href="#">上一页</a>&nbsp;
      				<a  style="cursor:hand" href="#">下一页</a>&nbsp; 
      				<a   style="cursor:hand" href="#">尾页</a>&nbsp; 
							&nbsp;
						</td>
          </tr>
        </table>


</FORM>
  </body>
</html>
