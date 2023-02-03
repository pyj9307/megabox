<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<!-- saved from url=(0041)https://www.megabox.co.kr/mypage/userinfo -->
<html lang="ko">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=yes">
<title>MEET PLAY SHARE, 메가박스</title>
<meta property="name" id="metaTagTitle" content="MEET PLAY SHARE, 메가박스">
<meta property="description" id="metaTagDtls"
	content="사람들과 공유할 수 있는, 공간경험을 만듭니다.">
<meta property="keywords" id="metaTagKeyword"
	content="메가박스,megabox,영화,영화관,극장,티켓,박스오피스,상영예정작,예매,오페라,싱어롱,큐레이션,필름소사이어티,클래식소사이어티,이벤트,Movie,theater,Cinema,film,Megabox">
<meta property="fb:app_id" id="fbAppId" content="546913502790694">
<meta property="og:site_name" id="fbSiteName" content="메가박스">
<meta property="og:type" id="fbType" content="movie">
<meta property="og:url" id="fbUrl"
	content="https://www.megabox.co.kr/mypage/userinfo?pwd=ldajfksd3E!">
<meta property="og:title" id="fbTitle" content="MEET PLAY SHARE, 메가박스">
<meta property="og:description" id="fbDtls"
	content="사람들과 공유할 수 있는, 공간경험을 만듭니다.">
<meta property="og:image" id="fbImg"
	content="https://img.megabox.co.kr/SharedImg/metaTag/2020/02/04/gFfTzMwwiCxhBwcUV5TRGMFX9Cmoj64W.jpg">
<link rel="shortcut icon"
	href="https://www.megabox.co.kr/static/pc/images/favicon.ico">
<link rel="stylesheet" href="resources/createPage_files/megabox.min.css"
	media="all">
<script type="text/javascript" async=""
	src="resources/createPage_files/analytics.js.다운로드"></script>
<script type="text/javascript" async=""
	src="resources/createPage_files/js"></script>
<script async="" src="resources/createPage_files/js(1)"></script>
<script>window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag('js', new Date()); gtag('config', 'UA-30006739-3');</script>
<script src="resources/createPage_files/megabox.api.min.js.다운로드"></script>
<script src="resources/createPage_files/megabox.common.min.js.다운로드"></script>
<script src="resources/createPage_files/megabox.netfunnel.min.js.다운로드"></script>
<script src="resources/createPage_files/ui.common.js.다운로드"></script>
<script src="resources/createPage_files/front.js.다운로드"></script>
<script src="js/movie/movieTotalSave.js"></script>
</head>
<body>
	<div class="body-wrap">
		<!-- header -->
		<jsp:include page="../layout/headerWhite.jsp"></jsp:include>
		<!--// header -->
		<div class="container has-lnb">
			<div class="page-util">
				<div class="inner-wrap" id="myLoaction">
					<div class="location">
						<span>Home</span> <a class="no-link">관리자 페이지</a> <a
							class="no-link">영화통합 저장</a>
					</div>
				</div>
			</div>
			<div class="inner-wrap">
				<div class="lnb-area">
					<nav id="lnb">
						<p class="tit">
							<a href="#">관리자 페이지</a>
						</p>
						<ul>
							<li class=""><a href="#">영화통합 저장</a></li>
						</ul>
					</nav>
				</div>
				<div id="myLoactionInfo" style="display: none;">
					<div class="location">
						<span>Home</span> <a href="#">관리자 페이지</a> <a href="#">영화통합
							저장</a>
					</div>
				</div>
				<div id="contents" class="">
					<h2 class="tit">영화통합 저장</h2>
					<div class="tit-util mt40 mb10">
						<h3 class="tit">기본정보</h3>
					</div>
					<form action="movieUpload" method="post"
						enctype="multipart/form-data" name="myForm">
						
						<input type="hidden" id="rdToken" value="0" /> 
						<input type="hidden" id="preListsLength" value="0" /> 
						<input type="hidden" id="theaterToken" value="0" /> 
						<input type="hidden" id="preTheaterListsLength" value="0" /> 
						
						<div class="table-wrap mb40">
							<table class="board-form">
								<colgroup>
									<col style="width: 180px;">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row"><label>영화이름</label></th>
										<td><select name="movie_value" class="small" style="width:200px;">
												<option value="">영화이름 선택</option>
												<c:forEach var="dto" items="${movieLists}">
													<option value="${dto.num }">${dto.name }</option>
												</c:forEach>
										</select></td>
									</tr>
									<tr>
										<th scope="row"><label>영화방식</label></th>
										<td><select name="pk_value" class="small" style="width:200px;">
												<option value="">영화방식 선택</option>
												<c:forEach var="dto" items="${pkLists}">
													<option value="${dto.num }">${dto.name }</option>
												</c:forEach>
										</select></td>
									</tr>
									<tr>
										<th scope="row"><label>지역</label></th>
										<td><select id="region_value" name="region_value" class="small" style="width:200px;">
												<option value="">지역 선택</option>
												<c:forEach var="dto" items="${regionLists}">
													<option value="${dto.num }">${dto.name }</option>
												</c:forEach>
										</select>
										<button type="button" id="btnRegion" class="button gray w100px ml08" onclick="rdView();">지역상세</button>
										</td>
									</tr>
									<tr>
										<th scope="row"><label>지역상세</label></th>
										<td><select id="rd_value" name="rd_value" class="small" style="width:200px;" disabled="true">
												<option value="">지역상세 선택</option>
										</select>
										<button type="button" id="btnTheater" class="button gray w100px ml08" onclick="theaterView();" disabled="true">상영관</button>
										</td>
									</tr>
									<tr>
										<th scope="row"><label>상영관</label></th>
										<td><select id="theater_value" name="theater_value" class="small" style="width:200px;" disabled="true">
												<option value="">상영관 선택</option>
										</select>
										
										</td>
									</tr>	
									<tr>
										<th scope="row"><label>상영날짜</label></th>
										<td><input type="text" id="datepicker" name="datepicker" style="width:200px; padding-left: 8px">
										
										</td>
									</tr>	
									<tr>
										<th scope="row"><label>상영시작 시간</label></th>
										<td><select id="startHour_value" name="startHour_value"
											class="small" style="width: 50px;">
												<c:forEach var="hour" items="${hours}">
													<option value="${hour }">${hour }</option>
												</c:forEach>
										</select> 시간 <select id="startMinute_value" name="startMinute_value"
											class="small" style="width: 50px;">
												<c:forEach var="min" items="${mins}">
													<option value="${min }">${min }</option>
												</c:forEach>
										</select> 분</td>
									</tr>
									<tr>
										<th scope="row"><label>상영종료 시간</label></th>
										<td><select id="endHour_value" name="endHour_value"
											class="small" style="width: 50px;">
												<c:forEach var="hour" items="${hours}">
													<option value="${hour }">${hour }</option>
												</c:forEach>
										</select> 시간 <select id="endMinute_value" name="endMinute_value"
											class="small" style="width: 50px;">
												<c:forEach var="min" items="${mins}">
													<option value="${min }">${min }</option>
												</c:forEach>
										</select> 분</td>
									</tr>									
								</tbody>
							</table>
						</div>
						<div class="btn-group mt40">
							<input type="button" class="button large" value="취소" /> <input
								type="button" class="button purple large" value="등록"
								onclick="sendIt();" />
						</div>
					</form>
				</div>
				<!--// container -->
			</div>
		</div>


	<!-- footer -->
	<jsp:include page="../layout/footerGrey.jsp"></jsp:include>
    <!-- //footer -->


	</div>
</body>
</html>