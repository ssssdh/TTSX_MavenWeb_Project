<%--
  Created by IntelliJ IDEA.
  User: SDH
  Date: 2019/10/21
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>天天生鲜-购物车</title>
	<link rel="stylesheet" type="text/css" href="../css/reset.css">
	<link rel="stylesheet" type="text/css" href="../css/main.css">
	<script type="text/javascript" src="../js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="../js/jquery-ui.min.js"></script>
</head>
<body>
	<%@ include file="head.jsp"%>

	<div class="search_bar clearfix">
		<a href="index.jsp" class="logo fl"><img src="../images/logo.png"></a>
		<div class="sub_page_name fl">|&nbsp;&nbsp;&nbsp;&nbsp;购物车</div>
		<div class="search_con fr">
			<input type="text" class="input_text fl" name="" placeholder="搜索商品">
			<input type="button" class="input_btn fr" name="" value="搜索">
		</div>		
	</div>

	<div class="total_count">全部商品<em>2</em>件</div>
	<ul class="cart_list_th clearfix">
		<li class="col01">商品名称</li>
		<li class="col02">商品单位</li>
		<li class="col03">商品价格</li>
		<li class="col04">数量</li>
		<li class="col05">小计</li>
		<li class="col06">操作</li>
	</ul>
    <c:forEach var="g" items="${cartList}" varStatus="vs">
		<ul class="cart_list_td clearfix">
			<li class="col01"><input type="checkbox" name="" checked></li>
			<li class="col02"><img src="../images/${g.goods.picture}"></li>
			<li class="col03">${g.goods.goodsName}<br><em>${g.goods.price}元/${g.goods.weight}g</em></li>
			<li class="col04">${g.goods.weight}g</li>
			<li class="col05">${g.goods.price}元</li>
			<li class="col06">
				<div class="num_add">
					<a href="javascript:;" class="add fl">+</a>
					<input type="text" class="num_show fl" value="${g.num}">
					<a href="javascript:;" class="minus fl">-</a>
				</div>
			</li>
			<li class="col07">${g.money}元</li>
			<li class="col08"><a href="javascript:;">删除</a></li>
		</ul>
	</c:forEach>

<%--	<ul class="cart_list_td clearfix">
		<li class="col01"><input type="checkbox" name="" checked></li>
		<li class="col02"><img src="../images/goods/goods003.jpg"></li>
		<li class="col03">大兴大棚草莓<br><em>16.80元/500g</em></li>
		<li class="col04">500g</li>
		<li class="col05">16.80元</li>
		<li class="col06">
			<div class="num_add">
				<a href="javascript:;" class="add fl">+</a>
				<input type="text" class="num_show fl" value="1">	
				<a href="javascript:;" class="minus fl">-</a>	
			</div>
		</li>
		<li class="col07">16.80元</li>
		<li class="col08"><a href="javascript:;">删除</a></li>
	</ul--%>>
	

	<ul class="settlements">
		<li class="col01"><input type="checkbox" name="" checked=""></li>
		<li class="col02">全选</li>
		<li class="col03">合计(不含运费)：<span>¥</span><em>42.60</em><br>共计<b>2</b>件商品</li>
		<li class="col04"><a href="place_order.jsp">去结算</a></li>
	</ul>

	<div class="footer">
		<div class="foot_link">
			<a href="#">关于我们</a>
			<span>|</span>
			<a href="#">联系我们</a>
			<span>|</span>
			<a href="#">招聘人才</a>
			<span>|</span>
			<a href="#">友情链接</a>		
		</div>
		<p>CopyRight © 2016 北京天天生鲜信息技术有限公司 All Rights Reserved</p>
		<p>电话：010-****888    京ICP备*******8号</p>
	</div>
	
</body>
</html>