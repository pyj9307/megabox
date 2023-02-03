<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
	<link rel="shortcut icon" href="https://www.megabox.co.kr/static/pc/images/favicon.ico">
	<title>MEET PLAY SHARE, 메가박스</title>
	<meta property="name" id="metaTagTitle" content="MEET PLAY SHARE, 메가박스">
	<meta property="description" id="metaTagDtls" content="사람들과 공유할 수 있는, 공간경험을 만듭니다.">
	<meta property="keywords" id="metaTagKeyword" content="메가박스,megabox,영화,영화관,극장,티켓,박스오피스,상영예정작,예매,오페라,싱어롱,큐레이션,필름소사이어티,클래식소사이어티,이벤트,Movie,theater,Cinema,film,Megabox">
	<meta property="fb:app_id" id="fbAppId" content="546913502790694">
	<meta property="og:site_name" id="fbSiteName" content="메가박스">
	<meta property="og:type" id="fbType" content="movie">
	<meta property="og:url" id="fbUrl" content="https://www.megabox.co.kr/">
	<meta property="og:title" id="fbTitle" content="MEET PLAY SHARE, 메가박스">
	<meta property="og:description" id="fbDtls" content="사람들과 공유할 수 있는, 공간경험을 만듭니다.">
	<meta property="og:image" id="fbImg" content="https://img.megabox.co.kr/SharedImg/metaTag/2020/02/04/gFfTzMwwiCxhBwcUV5TRGMFX9Cmoj64W.jpg">

    <!-- css -->
    <link rel="stylesheet" href="resources/assets/css/reset19.css">
    <link rel="stylesheet" href="resources/assets/css/style19.css">
    <link rel="stylesheet" href="resources/assets/css/swiper.css">
    
    <!-- 파비콘 -->
    <link rel="shortcut icon" href="resources/assets/icons/favicon.ico">
    <link rel="apple-touch-icon-precomposed" href="resources/assets/icons/favicon_72.png" />
    <link rel="apple-touch-icon-precomposed" sizes="96x96" href="resources/assets/icons/favicon_96.png" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="resources/assets/icons/favicon_144.png" />
    <link rel="apple-touch-icon-precomposed" sizes="192x192" href="resources/assets/icons/favicon_192.png" />
	<link rel="stylesheet" href="resources/main_files/megabox.min.css" media="all">
	
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script type="text/javascript" async="" src="resources/main_files/analytics.js.다운로드"></script><script async="" src="resources/main_files/js"></script>
	<script>window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag('js', new Date()); gtag('config', 'UA-30006739-3');</script>
	
	<!-- 현우(아래꺼 주석하면 main 실행시 404포함 alert창 2개 안뜸 -->
	<!-- <script src="resources/main_files/megabox.api.min.js.다운로드"></script> -->
	<script src="resources/main_files/lozad.min.js.다운로드"></script>
	<script src="resources/main_files/megabox.common.min.js.다운로드"></script>
	 <script src="resources/main_files/megabox.netfunnel.min.js.다운로드"></script><script src="resources/main_files/ts.wseq"></script>
	<script src="resources/main_files/persona.js.다운로드" async=""></script>
	<script src="resources/main_files/ui.common.js.다운로드"></script>
	<script src="resources/main_files/m-ny8Ge9GlYZJI4cgMhnHRaYB3JpsfRgMZ-aSWeaR4SEAM4qWzAZAbZEZkUwWnZPUVNfQ01sOTEtVU9TeHFRAstB2JUHayDnTwPLQdiVB2sg508.js.다운로드"></script>
	<script src="resources/main_files/front.js.다운로드"></script>
	<script src="resources/main_files/bc4af2fa1e" async="" type="text/javascript"></script>
	<script src="resources/main_files/bc4af2fa1e(1)" async="" type="text/javascript"></script>
</head>
<body>

	<footer id="footer">
		<!-- footer-top -->
		<div class="footer-top">
			<div class="inner-wrap">
				<ul class="fnb">
					<li><a href="" title="회사소개 페이지로 이동">회사소개</a></li>
					<li><a href="" title="인재채용 페이지로 이동">인재채용</a></li>
					<li><a href="" title="사회공헌 페이지로 이동">사회공헌</a></li>
					<li><a href="" title="제휴/광고/부대사업문의 페이지로 이동">제휴/광고/부대사업문의</a></li>
					<li><a href="" title="이용약관 페이지로 이동">이용약관</a></li>
					<li><a href="" title="위치기반서비스 이용약관 페이지로 이동">위치기반서비스 이용약관</a></li>
					<li class="privacy"><a href="" title="개인정보처리방침 페이지로 이동">개인정보처리방침</a></li>
					<li><a href="" target="_blank" title="윤리경영 페이지로 이동">윤리경영</a></li>
				</ul>

				<a href="" class="btn-looking-theater" title="극장찾기"><i class="iconset ico-footer-search"></i> 극장찾기</a>
			</div>
		</div>
		<!--// footer-top -->

		<!-- footer-bottom -->
		<div class="footer-bottom">
			<div class="inner-wrap">
				<div class="ci">MEGABOX : Life Theater</div>

				<div class="footer-info">
					<div>
						<address>서울특별시 마포구 월드컵로 240, 지상2층(성산동, 월드컵주경기장)</address>
						<p>ARS 1544-0070</p>
					</div>
					<p>대표자명 홍정인</p>
					<p>· 개인정보보호책임자 공성진</p>
					<p>· 사업자등록번호 211-86-59478</p>
					<p>· 통신판매업신고번호 제 2020-서울마포-4545 호</p>
					<p class="copy">COPYRIGHT © MegaboxJoongAng, Inc. All rights
						reserved</p>
				</div>

				<div class="footer-sns">
					<a href="" target="_blank" title="MEGABOX 유튜브 페이지로 이동"><i class="iconset ico-youtubeN">유튜브</i></a>
					<a href="" target="_blank" title="MEGABOX 인스타그램 페이지로 이동"><i class="iconset ico-instagramN">인스타그램</i></a> 
					<a href="" target="_blank" title="MEGABOX 페이스북 페이지로 이동"><i class="iconset ico-facebookN">페이스북</i></a>
					<a href="" target="_blank" title="MEGABOX 트위터 페이지로 이동"><i class="iconset ico-twitterN">트위터</i></a>
				</div>
			</div>
		</div>
		<!--// footer-bottom -->
		<div id="layer_looking_theater" class="layer-looking-theater"></div>
	</footer>
	<!--// footer -->
</body>
</html>