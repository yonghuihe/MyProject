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
<body class="item">
<div class="header">
	<div class="" style="background:none"></div>
	<div class="toolbar statusbar-padding">
		<button class="bar-button back-button" onclick="history.go(-1);" dwz-event-on-click="click"><i class="icon icon-back-i"></i></button>
		<div class="header-title">
			<div class="title"></div>
		</div>
	</div>
</div>

<!-- 首页轮播 begin -->
<div class="aui-banner-content">
	<div id="focus" class="focus">
<%--		<div class="bd">
			<div class="tempWrap" style="overflow:hidden; position:relative;">
				<ul id="Gallery" class="gallery" style="width: 2250px; position: relative; overflow: hidden; padding: 0px; margin: 0px; transition-duration: 200ms; transform: translate(-1125px, 0px) translateZ(0px);">
					<li style="display: table-cell; vertical-align: top; width: 375px;" >
						<a href="#"><img src="images/banner/banner1.jpg"></a>
					</li>
					<li style="display: table-cell; vertical-align: top; width: 375px;">
						<a href="#"><img src="images/banner/banner2.jpg"></a>
					</li>
					<li style="display: table-cell; vertical-align: top; width: 375px;" >
						<a href="#"><img src="images/banner/banner3.jpg"></a>
					</li>
					<li style="display: table-cell; vertical-align: top; width: 375px;">
						<a href="#"><img src="images/banner/banner4.jpg"></a>
					</li>
				</ul>
			</div>
		</div>--%>
		<div class="hd">
			<ul>
				<li class="">1</li>
				<li class="">2</li>
				<li class="">3</li>
				<li class="">4</li>
			</ul>
		</div>
	</div>
</div>
<!-- 首页轮播 end -->

<section class="header" style="position:inherit">
	<h2 class="title">雷柏（Rapoo） V700S合金版 混光机械键盘 游戏键盘 背光键盘 电脑键盘 笔记本</h2>
	<div class="price ">
		<div class="current-price">
			<span class="current-price"><small>￥</small>399.00</span>
		</div>
		<%--<span class="express">¥20.00</span>--%>
	</div>
	<%--<div class="sales">已经领取: 200 剩余: 1800</div>--%>
</section>

<section class="sku">
	<dl class="sku-group">
		<dt>颜色: </dt>
		<dd>浅蓝色</dd>
	</dl>
</section>

<section class="content">
	<div class="nav">
		<a class="active">商品详细</a>
	<%--	<a>商品评论</a>--%>
	</div>
	<div class="desc">
		<img src="/static/images/img/k1.jpg" width="100%">
	<%--	<img src="/static/images/img/k1.jpg" width="100%">
		<img src="/static/images/img/k1.jpg" width="100%">
		<img src="/static/images/img/k1.jpg" width="100%">--%>
	</div>

</section>


<footer class="footer t-line">
	<div class="aui-car-ear">
<%--		<div class="aui-car-ear-cell">
			<div class="aui-li">
				<a href="#" class="aui-icon-gz"></a>
				<a href="#"></a>
				<a href="#" class="aui-icon-gw"></a>
			</div>
		</div>--%>
		<%--<div class=""><a href="#" class="aui-car-all">加入购物车</a></div>--%>
		<div class=""><a href="confirm.jsp" class="aui-car-lli">立即购买</a></div>
	</div>

</footer>

<script type="text/javascript" src="/static/js/pd/jquery-1.9.1.min.js"></script>
<script src="/static/js/page/js/swiper.min.js"></script>
<script src="/static/js/page/js/jquery.lazyload.js"></script>
<script>

	var path = "{:U('buy')}?id=";
	//兼容性：字体大小，全局尺寸(rem)
	(function(doc, win) {
		var docEl = doc.documentElement,
				resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize',
				recalc = function() {
					var clientWidth = docEl.clientWidth;
					if (!clientWidth) return;
					var docElWidth = 100 * (clientWidth / 640);
					if (docElWidth > 100) docElWidth = 100;
					docEl.style.fontSize = docElWidth + 'px';
				};
		if (!doc.addEventListener) return;
		win.addEventListener(resizeEvt, recalc, false);
		doc.addEventListener('DOMContentLoaded', recalc, false);
	})(document, window);

	(function(){
		//轮播图
		new Swiper('.swiper-container', {
			pagination: '.swiper-pagination',
			paginationClickable: true,
			autoplay:3000
		});

		$('.nav a').click(function(){
			$('.nav a').removeClass('active');
			$(this).addClass('active');
		})
		//sku
		$('.sku,.buy').click(function(){
			$('.layer').addClass('acitve');
		})
		$('.close').click(function(){
			$('.layer').removeClass('acitve');
		});
		//却动
		$('#sku a').click(function(){
			console.log(this);
			$('#sku a').removeClass('active');
			$(this).addClass('active');
			$('.next').attr('href',path + $(this).data('sku'));
			$('.sku-group dd').text($(this).text());
		});
		//图片懒加载
		$("img").lazyload({
			effect : 'fadeIn',
			placeholder :'http://img.weizhi.so/placeholder.png'
		});

	})();


</script>
<script type="text/javascript" src="/static/js/pd/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="/static/js/pd/aui-touchSlide.js"></script>
<script>
	/*banner首页轮播*/
	TouchSlide({
		slideCell : "#focus",
		titCell : ".hd ul", // 开启自动分页 autoPage:true ，此时设置 titCell 为导航元素包裹层
		mainCell : ".bd ul",
		effect : "leftLoop",
		autoPlay : true, // 自动播放
		autoPage : true, // 自动分页
		delayTime: 200, // 毫秒；切换效果持续时间（执行一次效果用多少毫秒）
		interTime: 5000, // 毫秒；自动运行间隔（隔多少毫秒后执行下一个效果）
		switchLoad : "_src" // 切换加载，真实图片路径为"_src"
	});
</script>
<script src="/static/js/ba/aui-scroll.js" type="text/javascript" charset="utf-8"></script>
<script src="/static/js/ba/aui-index.js" type="text/javascript" charset="utf-8"></script>
<script src="/static/js/ba/aui-swipe.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>