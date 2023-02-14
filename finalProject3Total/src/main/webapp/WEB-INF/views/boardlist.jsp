<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<link rel="shortcut icon"
	href="https://www.megabox.co.kr/static/pc/images/favicon.ico">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>


<link rel="stylesheet" type="text/css" href="/resources/css/style.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/list.css" />
<link rel="stylesheet" type="text/css"
	href="/resources/css/main_files/megabox.min.css" media="all">

<!--  For AngularJS -->










<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>

<script src="<c:url value='/js/app.js' />"></script>

<script src="<c:url value='/js/boardlist_service.js' />"></script>

<script src="<c:url value='/js/boardlist_controller.js' />"></script>


<script type="text/javascript">

	function sendIt(){
		
		var f = document.searchForm;
		f.action = "<%=cp%>
	/movie/boardlist";
		f.submit();
	}
</script>


<style>
ul.a {
	text-align: center;
}

li.a {
	display: inline-block
}
</style>

</head>
<body ng-app="myBoard" class="ng-cloak"
	ng-controller="BoardlistController as ctrl">



	<!-- header -->
	<jsp:include page="layout/headerWhite.jsp"></jsp:include>
	<!--// header -->


	<!-- 헤더 부분 바로 가기 아이콘  -->
	<div class="page-util" style="">
		<div class="inner-wrap">
			<div class="location">
				<span>Home</span> <a href="http://localhost/movie/article"
					title="고객센터">고객센터</a> <a href="http://localhost/movie/list"
					title="공지사항">게시판 ${mtnDto.movie }</a>
			</div>
		</div>
	</div>

	<div class="container has-lnb">


		<div class="inner-wrap">


			<!-- 네비바 -->
			<div class="lnb-area addchat location-fixed">
				<nav id="lnb">
				<p class="tit">
					<a href="https://www.megabox.co.kr/support" title="고객센터">고객센터</a>
				</p>
				<ul>
					<li><a href="http://localhost:8080/movie/article" title="고객센터 홈">고객센터
							홈</a></li>

					<li><a href="http://localhost:8080/movie/list" title="공지사항">공지사항</a></li>
					<li><a href="http://localhost:8080/movie/created" title="1:1문의">1:1문의</a></li>
					<li class="on"><a href="http://localhost:8080/movie/boardlist"
						title="게시판">게시판</a></li>

				</ul>

				<!-- 고객센터 메뉴일때만 출력 -->
				<div class="left-customer-info">
					<p class="tit">
						메가박스 고객센터 <span>Dream center</span>
					</p>
					<p class="time">
						<i class="iconset ico-clock"></i> 10:00~19:00
					</p>
				</div>
				</nav>
			</div>


			<!--  클래스 타입을 location-fixed 로 설정하면 변경 가능하다 -->
			<div id="contents" class="location-fixed">
				<h2 class="tit">게시판</h2>

				<div class="tab-block mb30">
					<ul>
						<!-- on tabBtn으로 설정하면 가장 먼저 보이는 버튼 속성 -->
						<li class="on tabBtn"><button type="button"
								class="btn tabBtn" data-no="" title="전체공지 보기">전체</button></li>
						<!-- 이후 버튼 순서대로 출력 -->
						<li class="tabBtn"><button type="button" class="btn"
								data-no="81" title="메가박스 공지 보기">메가박스 공지</button></li>

						<li class="tabBtn"><button type="button" class="btn"
								data-no="82" title="지점 공지 보기">지점 공지</button></li>

					</ul>
				</div>

				<!-- 검색창 -->
				<div id="bbsList">
					<!--  검색창 안의 속성을 선택 할 수 있다. -->
					<div id="bbsList_header">
						<!-- 가장 왼쪽 시작 헤더 -->
						<div id="leftHeader">
							<form action="" method="post" name="searchForm">

								<select name="searchKey" class="selectField">
									<option value="subject">제목</option>
									<option value="name">작성자</option>
									<option value="content">내용</option>

									<!-- 검색 내용에 알맞는 텍스트 타입의 파일들을 검색할 수 있다 -->
								</select> <input type="text" name="searchValue" class="textField" /> <input
									type="button" value=" 검 색 " class="btn2" onclick="sendIt()" />

							</form>
						</div>
						<div id="rightHeader">

							<button type="button" ng-click="ctrl.reset()"
								class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset</button>
							<br>

							<h5>
								총 {{ctrl.page.totalElements}}</span>건
							</h5>
						</div>
					</div>

					<div class="tablecontainer">

						<table float="left" line-height="34px" text-align="center"
							width="600" border="1">

							<tr align="left">



								<th align="center">글번호</th>

								<th align="center">제목</th>

								<th align="center">글쓴이</th>

								<th align="center">등록일</th>

								<th align="center">조회수</th>






								<th align="center">조회/삭제</th>




							</tr>



							<tr data-ng-repeat="boardlist in ctrl.page.content">

								<td align="center"><span ng-bind="{{$index+1}}"></span></td>


								<!-- 글번호 -->



								<td align="left">
									<!-- 레벨의 수만큼 글을 뒤로 민다 --> <span
									ng-repeat="n in [].constructor(boardlist.replylevel) track by $index">

										&nbsp;&nbsp; </span> <span ng-bind="boardlist.title"></span>

								</td>

								<td align="center"><span ng-bind="boardlist.name"></span></td>

								<td align="center">{{boardlist.regdate | date:"yy.MM.dd
									hh:mm"}}</td>

								<td align="center"><span ng-bind="boardlist.readcount"></span></td>






								<td>

									<div style="text-align: center;">
										<button type="button"
											
											ng-click="ctrl.edit(boardlist.id)"
											class="btn btn-success custom-width"><a href="http://localhost:8080/boardlist2" 
											 title="게시판으로 이동">수정하기</a>
											</button>
									</div>

									<dd class="title">
										<a href="${boardlistUrl }&num=${dto.num }"> ${dto.title }</a>
									</dd>



								</td>

							</tr>

							</tbody>

						</table>

						<div>

							<!--  게시판 페이징 -->

							<div class="btn-group right">
								<a href="http://localhost:8080/movie/created2"
									class="button purple" id="myQnaBtn" title="게시판으로 이동">게시판 작성</a>
								<!-- btn-layer-open -->
							</div>



							<div>

								<ul class="a pagination" style="padding-top: 0px;">

									<li ng-class="{disabled: ctrl.page.number === 0}"><a
										ng-show="ctrl.page.number !== 0" class="a pointer"
										ng-click="ctrl.list(ctrl.page.number-1)">Prev</a> <span
										ng-show="ctrl.page.number === 0">Prev</span></li>

									<li
										ng-class="{disabled: ctrl.page.number === ctrl.page.totalPages - 1}">

										<a ng-show="ctrl.page.number !== ctrl.page.totalPages - 1"
										class="a,pointer" ng-click="ctrl.list(ctrl.page.number+1)">Next</a>

										<span ng-show="ctrl.page.number === ctrl.page.totalPages - 1">Next</span>

									</li>

								</ul>


							</div>





						</div>






					</div>
				</div>
			</div>
		</div>
		<!--// container -->

		<!-- footer -->
		<jsp:include page="layout/footerGrey.jsp"></jsp:include>
		<!-- //footer -->


		
</body>

</html>