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

<%-- <header id="header" class="main-header no-bg">
	<h1 class="ci">
		<a href="http://localhost:8080/main" title="MEGABOX 메인으로 가기">MEGABOX : Life Theater</a>
	</h1>

    <div class="util-area">
        <div class="left-link">
            <a href="https://www.megabox.co.kr/benefit/viplounge" title="VIP LOUNGE">VIP LOUNGE</a>
            <a href="https://www.megabox.co.kr/benefit/membership" title="멤버십">멤버십</a>
            <a href="http://localhost:8080/movie/list" title="고객센터">고객센터</a>
        </div>
		
        <div class="right-link">
            <!-- 
            세션 id가 없을 때 로그인/회원가입 을 보여주고
            다른상황(otherwise)일때는 세션id / 로그아웃 / 마이 페이지를 보여줌
             -->
            <c:choose>
            	
            	<c:when test="${empty sessionScope.customInfo.id }">
            		<a href="<%=cp%>/movie/login" title="로그인">로그인</a>
            		<a href="<%=cp%>/movie/join" title="회원가입">회원가입</a>
					<a href="/booking_1">빠른예매</a>
            	</c:when>     	
            	 
            	<c:otherwise>
            		<a href="">${sessionScope.customInfo.id }님</a>
            	 	<a href="<%=cp%>/movie/logout" title="로그아웃">로그아웃</a>
            	 	<a href="<%=cp%>/movie/mypage" title="마이페이지">마이페이지</a>
					<a href="/booking_1">빠른예매</a>
            	</c:otherwise>	 
            </c:choose>        
        </div>         
    </div>
	
    <div class="link-area">
        <a href="https://www.megabox.co.kr/#layer_sitemap" class="header-open-layer btn-layer-sitemap" title="사이트맵">사이트맵</a>
        <a href="https://www.megabox.co.kr/#layer_header_search" class="header-open-layer btn-layer-search" title="검색">검색</a>
        <a href="https://www.megabox.co.kr/booking/timetable" class="link-ticket" title="상영시간표">상영시간표</a>
        <a href="/booking_1" class="header-open-layer btn-layer-mymega" title="나의 메가박스">나의 메가박스</a>
    </div>

	<nav id="gnb">
        <ul class="gnb-depth1">
            <li><a href="https://www.megabox.co.kr/movie" class="gnb-txt-movie" title="영화">영화</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="https://www.megabox.co.kr/movie" title="전체영화">전체영화</a></li>


                        <li><a href="https://www.megabox.co.kr/curation/specialcontent" title="큐레이션">큐레이션</a></li>
                        
                        <li id="festivalArea" style="display: none;"><a href="https://www.megabox.co.kr/festival" title="영화제">영화제</a></li>
                        <li><a href="https://www.megabox.co.kr/moviepost/all" title="무비포스트">무비포스트</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="http://localhost:8080/booking_1" class="gnb-txt-reserve" title="예매">예매</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="https://www.megabox.co.kr/booking" title="빠른예매">빠른예매</a></li>
                        <li><a href="https://www.megabox.co.kr/booking/timetable" title="상영시간표">상영시간표</a></li>
                        <li><a href="https://www.megabox.co.kr/booking/privatebooking" title="더 부티크 프라이빗 예매">더 부티크 프라이빗 예매</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="https://www.megabox.co.kr/theater/list" class="gnb-txt-theater" title="극장">극장</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="https://www.megabox.co.kr/theater/list" title="전체극장">전체극장</a></li>
                        <li><a href="https://www.megabox.co.kr/specialtheater/list" title="특별관">특별관</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('EVENT_LIST','/event');return false;" class="gnb-txt-event" title="이벤트">이벤트</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('EVENT_LIST','/event');return false;" title="진행중 이벤트">진행중 이벤트</a></li>
                        <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('EVENT_LIST','/event/end');return false;" title="지난 이벤트">지난 이벤트</a></li>
                        <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('EVENT_LIST','/event/winner/list');return false;" title="당첨자발표">당첨자발표</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('STORE_LIST','/store');return false;" class="gnb-txt-store" title="스토어">스토어</a></li>
            <li><a href="https://www.megabox.co.kr/benefit/membership" class="gnb-txt-benefit" title="혜택">혜택</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="https://www.megabox.co.kr/benefit/membership" title="메가박스 멤버십">메가박스 멤버십</a></li>
                        <li><a href="https://www.megabox.co.kr/benefit/discount/guide" title="제휴/할인">제휴/할인</a></li>
                    </ul>
                </div>
            </li>
        </ul>
    </nav>
</header> --%>





<header id="header">
	<h1 class="ci">
		<a href="http://localhost:8080/main" title="MEGABOX 메인으로 가기">MEGABOX : Life Theater</a>
	</h1>
			
	<div class="util-area">
		<div class="left-link">
			<a href="" title="VIP LOUNGE">VIP LOUNGE</a> 
			<a href="" title="멤버십">멤버십</a>
			<a href="http://localhost:8080/movie/list" title="고객센터">고객센터</a>
		</div>
			
		<div class="right-link">
			<!-- 
			세션 id가 없을 때 로그인/회원가입 을 보여주고
			다른상황(otherwise)일때는 세션id / 로그아웃 / 마이 페이지를 보여줌
			-->
			<c:choose>
            	
            	<c:when test="${empty sessionScope.customInfo.id }">
            		<a href="<%=cp%>/movie/login" title="로그인">로그인</a>
            		<a href="<%=cp%>/movie/join" title="회원가입">회원가입</a>
					<a href="/booking_1">빠른예매</a>
            	</c:when>     	
            	 
            	<c:otherwise>
            		<a href="">${sessionScope.customInfo.id }님</a>
            	 	<a href="<%=cp%>/movie/logout" title="로그아웃">로그아웃</a>
            	 	<a href="<%=cp%>/movie/mypage" title="마이페이지">마이페이지</a>
					<a href="/booking_1">빠른예매</a>
            	</c:otherwise>	 
            </c:choose>
        </div>
	</div>
	
	<div class="link-area">
		<a href="" class="header-open-layer btn-layer-sitemap" title="사이트맵">사이트맵</a> 
		<a href="" class="header-open-layer btn-layer-search" title="검색">검색</a> 
		<a href="" class="link-ticket" title="상영시간표">상영시간표</a> 
		<a href="" class="header-open-layer btn-layer-mymega" title="나의 메가박스">나의 메가박스</a>
	</div>
	<nav id="gnb">
		<ul class="gnb-depth1">
			<li><a href="" class="gnb-txt-movie" title="영화">영화</a>
				<div class="gnb-depth2">
					<ul>
						<li><a href="" title="전체영화">전체영화</a></li>
						<li><a href="" title="큐레이션">큐레이션</a></li>
						<li id="festivalArea" style="display: none;"><a href="" title="영화제">영화제</a></li>
						<li><a href="" title="무비포스트">무비포스트</a></li>
					</ul>
				</div>
			</li>
			<li><a href="http://localhost:8080/booking_1" class="gnb-txt-reserve" title="예매">예매</a>
				<div class="gnb-depth2">
					<ul>
						<li><a href="http://localhost:8080/booking_1" title="빠른예매">빠른예매</a></li>
						<li><a href="http://localhost:8080/booking_1" title="상영시간표">상영시간표</a></li>
						<li><a href="" title="더 부티크 프라이빗 예매">더 부티크 프라이빗 예매</a></li>
					</ul>
				</div></li>
			<li><a href="" class="gnb-txt-theater" title="극장">극장</a>
				<div class="gnb-depth2">
					<ul>
						<li><a href="" title="전체극장">전체극장</a></li>
						<li><a href="" title="특별관">특별관</a></li>
					</ul>
				</div></li>
			<li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('EVENT_LIST','/event');return false;" class="gnb-txt-event" title="이벤트">이벤트</a>
				<div class="gnb-depth2">
					<ul>
						<li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('EVENT_LIST','/event');return false;" title="진행중 이벤트">진행중 이벤트</a></li>
						<li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('EVENT_LIST','/event/end');return false;" title="지난 이벤트">지난 이벤트</a></li>
						<li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('EVENT_LIST','/event/winner/list');return false;" title="당첨자발표">당첨자발표</a></li>
					</ul>
				</div></li>
			<li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('STORE_LIST','/store');return false;" class="gnb-txt-store" title="스토어">스토어</a></li>
			<li><a href="" class="gnb-txt-benefit" title="혜택">혜택</a>
				<div class="gnb-depth2">
					<ul>
						<li><a href="" title="메가박스 멤버십">메가박스 멤버십</a></li>
						<li><a
							href="" title="제휴/할인">제휴/할인</a></li>
					</ul>
				</div>
			</li>
		</ul>
	</nav>
</header>
<!--// header -->


</body>
</html>