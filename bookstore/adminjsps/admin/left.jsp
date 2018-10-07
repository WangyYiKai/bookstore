<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>菜单</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="<c:url value='/menu/mymenu.js'/>"></script>
	<link rel="stylesheet" href="<c:url value='/menu/mymenu.css'/>" type="text/css" media="all">
<script language="javascript">
/*
 * bar1 必须要与域对象相同
 */
var bar1 = new Q6MenuBar("bar1", "王奕楷网络图书商城");
function load() {
	bar1.colorStyle = 2;//设置配色方案，配色方案有四种0 1 2 3
	bar1.config.imgDir = "<c:url value='/menu/img/'/>";//图片目录
	bar1.config.radioButton=false;//菜单按钮间是否排斥
	
	
	bar1.add("分类管理", "查看分类", "<c:url value='/admin/AdminCategoryServlet?method=findAll'/>", "body");
	bar1.add("分类管理", "添加分类", "<c:url value='/adminjsps/admin/category/add.jsp'/>", "body");

	bar1.add("图书管理", "查看图书", "<c:url value='/admin/AdminBookServlet?method=findAll'/>", "body");
	bar1.add("图书管理", "添加图书", "<c:url value='/admin/AdminBookServlet?method=addPre'/>", "body");

	bar1.add("订单管理", "所有订单", "<c:url value='/admin/AdminOrderServlet?method=allOrders'/>", "body");
	bar1.add("订单管理", "未付款订单", "<c:url value='/admin/AdminOrderServlet?method=stateOne'/>", "body");
	bar1.add("订单管理", "已付款订单", "<c:url value='/admin/AdminOrderServlet?method=stateTwo'/>", "body");
	bar1.add("订单管理", "未收货订单", "<c:url value='/admin/AdminOrderServlet?method=stateThree'/>", "body");
	bar1.add("订单管理", "已完成订单", "<c:url value='/admin/AdminOrderServlet?method=stateFour'/>", "body");

	var d = document.getElementById("menu");
	d.innerHTML = bar1.toString();
}
</script>

</head>

<body onload="load()" style="margin: 0px; background: rgb(254,238,189);">
<div id="menu"></div>

</body>
</html>
