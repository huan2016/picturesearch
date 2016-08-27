<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html,charset=UTF-8">
<title>Insert title here</title>
<title>single</title>
<meta name="description"
	content="Free Responsive Html5 Css3 Templates | zerotheme.com">
<meta name="author" content="www.zerotheme.com">

<!-- Mobile Specific Metas
  ================================================== -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
  ================================================== -->
<link rel="stylesheet" href="<c:url value="/res/css/zerogrid.css"/>">
<link rel="stylesheet" href="<c:url value="/res/css/style.css"/>">
<link rel="stylesheet" href="<c:url value="/res/css/menu.css"/>">
<!-- Owl Carousel Assets -->
<link href="<c:url value="/res/css/owl.carousel.css"/>" rel="stylesheet">
<link href="<c:url value="/res/css/owl.theme.css"/>" rel="stylesheet">
<!-- Custom Fonts -->
<link href="<c:url value="/res/font-awesome/css/font-awesome.min.css"/>"
	rel="stylesheet" type="text/css">
<!--video.js css-->
<link href="<c:url value="/res/css/video-js.min.css"/>" rel="stylesheet"
	type="text/css">
</head>
<body id="wrapper">
	<div class="wrap-body">
		<!--////////////////////////////////////Header-->
		<header>
			<div class="wrap-header">
				<div class="zerogrid">
					<div class="row">
						<a href="<c:url value="/"/>" class="logo"><img
							src="<c:url value="/res/images/logo.png"/>" /></a>
					</div>
				</div>
			</div>
		</header>
		<!--////////////////////////////////////Menu-->

		<nav class="cmn-tile-nav">
			<ul class="clearfix">
				<li class="colour-1"><a href="<c:url value="/gallery"/>">shopping
						search</a></li>
				<li class="colour-2"><a href="<c:url value="/gallery"/>">shopping
						search</a></li>
				<li class="colour-3"><a href="<c:url value="/gallery"/>">shopping
						search</a></li>
				<li class="colour-4"><a href="<c:url value="/gallery"/>">shopping
						search</a></li>
				<li class="colour-5"><a href="<c:url value="/gallery"/>">shopping
						search</a></li>
				<li class="colour-6"><a href="<c:url value="/gallery"/>">shopping
						search</a></li>
				<li class="colour-7"><a href="<c:url value="/gallery"/>">shopping
						search</a></li>
				<li class="colour-8"><a href="<c:url value="/gallery"/>">shopping
						search</a></li>
			</ul>
		</nav>
		<!--////////////////////////////////////Container-->
		<section id="container" class="index-page">
			<div class="wrap-container zerogrid">
				<div class="row">
					<div id="main-content" class="col-2-3">
						<div class="wrap-vid">
							<video id="my_video_1"
								class="video-js vjs-default-skin vjs-big-play-centered" controls
								preload="auto" width="700" height="400"
								poster="<c:url value="/res/images/post.jpg"/>" data-setup="{}">
								<source src="<c:url value="/res/video/video1.mp4"/>"
									type='video/mp4'>
								<source src="<c:url value="/res/video/video1.mp4"/>"
									type='video/ogg; codecs="theora,vorbis"'>
								<source src="<c:url value="/res/video/video1.mp4"/>"
									type='video/webm'>
							</video>
						</div>
					</div>
					<div id="sidebar" class="col-1-3">
						<!---- Start Widget ---->
						<div class="widget wid-post">
							<div class="wid-header" id="search">
								<h5>Products</h5>
							</div>
							<div class="wid-content" id="photo"></div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
<!-- Slider -->
<script src="<c:url value="/res/js/jquery-2.1.1.js"/>"></script>
<script src="<c:url value="/res/js/demo.js"/>"></script>
<!-- Search -->
<script src="<c:url value="/res/js/modernizr.custom.js"/>"></script>
<script src="<c:url value="/res/js/classie.js"/>"></script>
<script src="<c:url value="/res/js/uisearch.js"/>"></script>
<script>
	new UISearch(document.getElementById('sb-search'));
</script>
<!-- Carousel -->
<script src="<c:url value="/res/js/owl.carousel.js"/>"></script>

<!--video.js部分js文件-->
<script type="text/javascript"
	src="<c:url value="/res/js/video.min.js"/>" /></script>
<script type="text/javascript"
	src="<c:url value="/res/js/jquery-2.1.1.js"/>" /></script>

<script type="text/javascript">
	videojs.options.flash.swf = "<c:url value="/res/js/video-js.swf"/>";
	var player = videojs('my_video_1');
	var pathlist;
	var i;
	var currenttime;
	player.on('pause', function() {
		currenttime = player.currentTime();
	});
	$(document).ready(function() {
		$("#search").click(function() {
			$("#photo").empty();
			$.post(
				"<c:url value="/search"/>",
				{
					videoid : 10000,
					currentsecond : currenttime
				},
				function(data, status) {
					pathList = data.content;
					var root = '<c:url value="/"/>';
					for (i = 0; i < pathList.length; i++) {
						console.log(pathList[i]);
						var temp = '<div class="post wrap-vid"><div class="zoom-container"><img src="' + root + pathList[i] + '" /> '
								+ '</div></div>';
						console.log(temp);
						$("#photo").append(temp);
					}
				}
			);
		});
	});
</script>

<script>
	$(document).ready(function() {

		$("#owl-demo-1").owlCarousel({
			items : 4,
			lazyLoad : true,
			navigation : true
		});
		$("#owl-demo-2").owlCarousel({
			items : 4,
			lazyLoad : true,
			navigation : true
		});

	});
</script>
</body>
</html>