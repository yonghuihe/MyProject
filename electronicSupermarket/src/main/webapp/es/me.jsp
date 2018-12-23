<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<title>歪秀购物</title>
	<link rel="stylesheet" type="text/css" href="/static/css/ui.css">
	<link href="favicon.ico" type="image/x-icon" rel="icon">
	<link href="iTunesArtwork@2x.png" sizes="114x114" rel="apple-touch-icon-precomposed">
</head>
<body class="android">
<div class="scroll-content" >
	<div class="">
		<div class="header home-header" style="" id="headsearch">
			<div class="toolbar statusbar-padding active">
				<button class="bar-button current-city"><i class="icon icon-set" style="left:0;right: inherit"></i></button>

				<button class="bar-button icon-button"><i class="icon icon-msg"></i></button>
			</div>
		</div>
		<div class="my-info">
			<div class="my-info-background"></div>
			<img class="my-avatar" src="/static/images/img/my-photo1.jpg">
			<span class="name"><a href="login.html" style="color:#fff">账号登录</a></span>
			<span class="my-vip" style="background:none">超级会员&nbsp;&nbsp;&nbsp;&nbsp;积分:5190&nbsp;&nbsp;</span>
		</div>
		<div class="my-car-shortcut">
			<div class="layout-column b-line" style="padding:10px 0">
				<a class="col"  rel="test" href="wait.jsp">
							<span class="img-icon ">
								<img class="img-icon-home" src="/static/images/icon-home/me-1.png" />
							</span>
					<span class="img-icon-name">待付款</span>
				</a>
				<a class="col"  rel="test" href="wait.jsp">
							<span class="img-icon ">
								<img class="img-icon-home" src="/static/images/icon-home/me-2.png" />
							</span>
					<span class="img-icon-name">待收货</span>
				</a>
				<a class="col" href="wait.jsp" rel="test">
							<span class="img-icon ">
								<img class="img-icon-home" src="/static/images/icon-home/me-3.png" />
							</span>
					<span class="img-icon-name">全部订单</span>
				</a>
			</div>
		</div>
		<div class="devider b-line"></div>
		<!-- 个人中心 begin-->
		<div>
			<div class="aui-list-cells">
				<a href="wallet.html" class="aui-list-cell">
					<div class="aui-list-cell-fl"><img src="/static/images/icon-home/me-4.png"></div>
					<div class="aui-list-cell-cn">我的钱包</div>
					<div class="aui-list-cell-fr">3999</div>
				</a>
				<a href="collect.html" class="aui-list-cell">
					<div class="aui-list-cell-fl"><img src="/static/images/icon-home/me-13.png"></div>
					<div class="aui-list-cell-cn">我的收藏</div>
					<div class="aui-list-cell-fr"></div>
				</a>
				<a href="adds.html" class="aui-list-cell">
					<div class="aui-list-cell-fl"><img src="/static/images/icon-home/me-6.png"></div>
					<div class="aui-list-cell-cn">地址管理</div>
					<div class="aui-list-cell-fr"></div>
				</a>
				<a href="footprint.html" class="aui-list-cell">
					<div class="aui-list-cell-fl"><img src="/static/images/icon-home/me-5.png"></div>
					<div class="aui-list-cell-cn">我的足迹</div>
					<div class="aui-list-cell-fr">8450</div>
				</a>
				<div class="devider b-line"></div>
				<a href="bank.html" class="aui-list-cell">
					<div class="aui-list-cell-fl"><img src="/static/images/icon-home/me-7.png"></div>
					<div class="aui-list-cell-cn">我的银行</div>
					<div class="aui-list-cell-fr"></div>
				</a>
				<a href="evaluate.html" class="aui-list-cell">
					<div class="aui-list-cell-fl"><img src="/static/images/icon-home/me-9.png"></div>
					<div class="aui-list-cell-cn">我的评价</div>
					<div class="aui-list-cell-fr"></div>
				</a>
				<div class="devider b-line"></div>
				<a href="login.html" class="aui-list-cell">
					<div class="aui-list-cell-fl"><img src="/static/images/icon-home/me-11.png"></div>
					<div class="aui-list-cell-cn">退出账号</div>
					<div class="aui-list-cell-fr"></div>
				</a>
			</div>
		</div>


	</div>
</div>
<div style="height:48px"></div>
<div class="tab-bar tab-bottom">
	<a class="tab-button cached" href="index.jsp"><i class="tab-button-icon icon icon-home"></i><span class="tab-button-txt">首页</span></a>
	<%--<a class="tab-button cached" href="life.html"><i class="tab-button-icon icon icon-exhibition" ></i><span class="tab-button-txt">生活</span></a>--%>
	<%--<a class="tab-button cached" href="classs.html"><i class="tab-button-icon icon icon-service" ></i><span class="tab-button-txt">分类</span></a>--%>
	<%--<a class="tab-button cached" href="car.html"><i class="tab-button-icon icon icon-car"></i><span class="tab-button-txt">购物车</span></a>--%>
	<a class="tab-button active" href="me.html"><i class="tab-button-icon icon icon-my" ></i><span class="tab-button-txt">我的</span></a>
</div>
<script type="text/javascript" src="/static/js/jquery-1.7.1.min.js"></script>
<script class="demo-script">
	$(window).scroll(function () {
		if ($(window).scrollTop() > 100) {
			$("#headsearch").addClass("ui-form-color-nav");
		}else if($(window).scrollTop() == 0){
			$("#headsearch").removeClass("ui-form-color-nav");
		}
	});
	(function (){
		var slider = new fz.Scroll('.ui-slider', {
			role: 'slider',
			indicator: true,
			autoplay: true,
			interval: 5000
		});

		slider.on('beforeScrollStart', function(fromIndex, toIndex) {
			console.log(fromIndex,toIndex)
		});

		slider.on('scrollEnd', function(cruPage) {
			console.log(cruPage)
		});
	})();
</script>
</body>
</html>