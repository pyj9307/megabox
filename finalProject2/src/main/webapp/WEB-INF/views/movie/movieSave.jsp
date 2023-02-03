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
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
<title>MEET PLAY SHARE, 메가박스</title>
<meta property="name" id="metaTagTitle" content="MEET PLAY SHARE, 메가박스">
<meta property="description" id="metaTagDtls" content="사람들과 공유할 수 있는, 공간경험을 만듭니다.">
<meta property="keywords" id="metaTagKeyword" content="메가박스,megabox,영화,영화관,극장,티켓,박스오피스,상영예정작,예매,오페라,싱어롱,큐레이션,필름소사이어티,클래식소사이어티,이벤트,Movie,theater,Cinema,film,Megabox">
<meta property="fb:app_id" id="fbAppId" content="546913502790694">
<meta property="og:site_name" id="fbSiteName" content="메가박스">
<meta property="og:type" id="fbType" content="movie">
<meta property="og:url" id="fbUrl" content="https://www.megabox.co.kr/mypage/userinfo?pwd=ldajfksd3E!">
<meta property="og:title" id="fbTitle" content="MEET PLAY SHARE, 메가박스">
<meta property="og:description" id="fbDtls" content="사람들과 공유할 수 있는, 공간경험을 만듭니다.">
<meta property="og:image" id="fbImg" content="https://img.megabox.co.kr/SharedImg/metaTag/2020/02/04/gFfTzMwwiCxhBwcUV5TRGMFX9Cmoj64W.jpg">
<link rel="shortcut icon" href="https://www.megabox.co.kr/static/pc/images/favicon.ico">
<link rel="stylesheet" href="resources/createPage_files/megabox.min.css" media="all">
<script type="text/javascript" async="" src="resources/createPage_files/analytics.js.다운로드"></script>
<script type="text/javascript" async="" src="resources/createPage_files/js"></script>
<script async="" src="resources/createPage_files/js(1)"></script>
<script>window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag('js', new Date()); gtag('config', 'UA-30006739-3');</script>
<script src="resources/createPage_files/megabox.api.min.js.다운로드"></script>
<script src="resources/createPage_files/megabox.common.min.js.다운로드"></script>
<script src="resources/createPage_files/megabox.netfunnel.min.js.다운로드"></script>
<script src="resources/createPage_files/ui.common.js.다운로드"></script>
<script src="resources/createPage_files/front.js.다운로드"></script>
<script src="js/movie/movieSave.js"></script>
</head>
<body _c_t_common="1">
	<div class="body-wrap">
		<!-- header -->
		<jsp:include page="../layout/headerWhite.jsp"></jsp:include>
		<!--// header -->
		<div class="container has-lnb">
			<div class="page-util">
				<div class="inner-wrap" id="myLoaction">
					<div class="location">
						<span>Home</span> <a class="no-link">관리자 페이지</a> <a
							class="no-link">영화 저장</a>
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
							<li class=""><a href="#">영화 저장</a></li>
						</ul>
					</nav>
				</div>
				<div id="myLoactionInfo" style="display: none;">
					<div class="location">
						<span>Home</span> <a href="#">관리자 페이지</a> <a href="#">영화 저장</a>
					</div>
				</div>
				<div id="contents" class="">
					<h2 class="tit">영화 저장</h2>
					<div class="tit-util mt40 mb10">
						<h3 class="tit">기본정보</h3>
					</div>
					<form action="movieUpload" method="post"
						enctype="multipart/form-data" name="myForm">
						<div class="table-wrap mb40">
							<table class="board-form">
								<caption>이름, 생년월일, 휴대폰, 이메일, 비밀번호, 주소 항목을 가진 기본정보 표</caption>
								<colgroup>
									<col style="width: 180px;">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row"><label for="movieNm_value">영화 이름</label></th>
										<td><input type="text" id="movieNm_value"
											name="movieNm_value" class="input-text w200px"></td>
									</tr>
									<tr>
										<th scope="row"><label>관람등급</label></th>
										<td><select name="vcNum" id="ask-type"
											class="small" tabindex="-98">
												<option value="">관람등급 선택</option>
												<c:forEach var="dto" items="${vcLists}">
													<option value="${dto.num }">${dto.hangle }</option>
												</c:forEach>
										</select></td>
									</tr>
									<tr>
										<th scope="row">영화 이미지</th>
										<td>
											<div class="upload-image-box">
												<div class="info-txt">
													<input type="file" class="btn-image-add" name="upload" />
												</div>
											</div>
										</td>
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