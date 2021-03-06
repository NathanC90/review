<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--Icon Tags start -->
<link rel="apple-touch-icon" sizes="57x57"
	href="/images/icon/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60"
	href="/images/icon/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="/images/icon/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="/images/icon/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="/images/icon/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="/images/icon/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="/images/icon/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="/images/icon/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="/images/icon/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"
	href="/images/icon/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="/images/icon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="/images/icon/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="/images/icon/favicon-16x16.png">
<link rel="manifest" href="/manifest.json">

<!--Icon Tags end -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Viewport Meta Tag -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Animour</title>
<!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
<!-- Main Style -->
<link rel="stylesheet" type="text/css" href="/css/main.css">
<!-- Slicknav Css -->
<link rel="stylesheet" type="text/css" href="/css/slicknav.css">

<!-- Responsive Style -->
<link rel="stylesheet" type="text/css" href="/css/responsive.css">
<!--Fonts-->
<link rel="stylesheet" media="screen"
	href="/fonts/font-awesome/font-awesome.min.css">
<link rel="stylesheet" media="screen"
	href="/fonts/simple-line-icons.css">

<!-- Extras -->
<link rel="stylesheet" type="text/css"
	href="/extras/owl/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="/extras/owl/owl.theme.css">
<link rel="stylesheet" type="text/css" href="/extras/animate.css">
<link rel="stylesheet" type="text/css" href="/extras/normalize.css">


<!-- Color CSS Styles  -->
<link rel="stylesheet" type="text/css" href="/css/colors/green.css"
	media="screen" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Animour</title>
</head>
<body>
	<header id="header-wrap">
		<!-- Navbar Starts -->
	<jsp:include page="../navbar.jsp"></jsp:include>
		<!-- Navbar ends -->
	</header>	
	<!-- Container Starts -->
				<div class="container">

					<div class="row">
						<c:forEach var="news" items="${allNews}">
							<div class="col-md-4">
								<div class="card mb-4 box-shadow">
									<img class="card-img-top" src="/images/news/catexpo.jpg" width="80px" alt="">
									<div class="card-body" style="margin-bottom: 5px">
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<h3>查詢一筆活動資料</h3>
	<div>
		<p>活動編號：${oneNews.seqno}<br>活動名稱：${oneNews.subject}</p>
		<p>活動內文：${oneNews.content}<br>更新時間：${oneNews.updateTime}</p>
	</div>
	<hr>

	<h3>查詢所有活動資料</h3>
	<table>
		<c:forEach var="news" items="${allNews}">
		<p>活動編號：${news.seqno}<br>活動名稱：${news.subject}</p>
		<p>活動內文：${news.content}<br>更新時間：${news.updateTime}</p>
		<hr>
		</c:forEach>
	</table>
	<hr>
	
<!-- 	<h3>刪除一筆活動資料</h3> -->
<%-- 		<p>刪除編號：${delete} 一筆資料</p> --%>
<!-- 	<hr> -->

	<h3>新增一筆活動資料</h3>
	<div>
		<p>活動編號：${insertNews.seqno}<br>活動名稱：${insertNews.subject}</p>
		<p>活動內容：${insertNews.content}<br>發布時間：${insertNews.publishTime}</p>
		<p>結束時間：${insertNews.publishTimeEnd}<br>發布人：${insertNews.createUser}</p>
	</div>
	<hr>

	<h3>修改一筆活動資料</h3>
	<div>
		<p>活動編號：${updateNews.seqno}<br>活動名稱：${updateNews.subject}</p>
		<p>活動內容：${updateNews.content}<br>更新使用者：${updateNews.updateUser}</p>
		<p>更新時間：${updateNews.updateTime}</p>
		
	</div>

					<!-- Service-Block-000 Item Ends -->
				</div>
				<!-- Container Ends -->
	<!-- Footer Section -->
	<footer>
	<jsp:include page="../footer.jsp"></jsp:include>
	</footer>
	<!-- Footer Section End-->

	<!-- Go To Top Link -->
	<a href="#" class="back-to-top"> <i class="fa fa-angle-up"> </i>
	</a>

	<!-- JavaScript & jQuery Plugins -->
	<script src="/js/jquery-min.js"></script>
	<script src="/js/popper.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/jquery.mixitup.js"></script>
	<script src="/js/smoothscroll.js"></script>
	<script src="/js/wow.js"></script>
	<script src="/js/owl.carousel.js"></script>
	<script src="/js/waypoints.min.js"></script>
	<script src="/js/jquery.counterup.min.js"></script>
	<script src="/js/jquery.slicknav.js"></script>
	<script src="/js/jquery.appear.js"></script>
	<script src="/js/form-validator.min.js"></script>
	<script src="/js/contact-form-script.min.js"></script>
	<script src="/js/main.js"></script>
	

</body>
</html>