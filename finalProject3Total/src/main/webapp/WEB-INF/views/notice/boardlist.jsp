<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); String cp = request.getContextPath(); %>

<link rel="stylesheet" type="text/css" href="/resources/css/style.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/list.css" />


<!--  For AngularJS -->
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
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
<script type="text/javascript">
	function sendIt(){
		
		var f = document.searchForm;
		f.action = "<%=cp%>/movie/list";
		f.submit();
	}
</script>

	
<body ng-app="myBoard" class="ng-cloak" ng-controller="BoardlistController as ctrl">

	<!-- header -->
	<jsp:include page="../layout/headerWhite.jsp"></jsp:include>
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
					<nav id="lnb" class="ty2">
						<p class="tit"><a href="#" title="고객센터">고객센터</a></p>
						<ul>
							<li><a href="/movie/customer" title="고객센터 홈">고객센터</a></li>
							<li ><a href="#" title="자주 묻는 질문">자주 묻는 질문</a></li>
							<!-- <li class="on"><a href="/movie/created" title="공지사항">공지사항(원본)</a></li> -->
							<li ><a href="/movie/list" title="공지사항">공지사항</a></li>
							<li><a href="/movie/list2" title="1:1문의">1:1문의</a></li>
							<li class="on"><a href="/boardlist" title="게시판">게시판</a></li>
							<li><a href="#" title="단체관람 및 대관문의">단체관람 및 대관문의</a></li>
							<li><a href="#" title="분실물 문의">분실물 문의</a></li>
							<li><a href="#" title="이용약관">이용약관</a></li>
							<li><a href="#" title="위치기반서비스이용약관">위치기반서비스이용약관</a></li>
							<li><a href="#" title="개인정보처리방침">개인정보처리방침</a></li>
							<li><a href="#" style="border-radius: 0 0 10px 10px;" title="스크린배정수에관한기준">스크린배정수에관한기준</a></li>
						</ul>

						<!-- 고객센터 메뉴일때만 출력 -->
						<div class="left-customer-info">
							<p class="tit">
								메가박스 고객센터
								<span>Dream center</span>
							</p>
							<p class="time"><i class="iconset ico-clock"></i> 10:00~19:00</p>
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
								data-no="81" title="메가박스 공지 보기">자유게시판</button></li>

						<li class="tabBtn"><button type="button" class="btn"
								data-no="82" title="지점 공지 보기">영화 후기</button></li>

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
								</select>
								<div class="board-search">
									<input type="text" name="searchValue" class="input-text" />
									<input type="button" value=" 검 색 " class="btn-search-input" onclick="sendIt()" />
								</div>

							</form>
						</div>
						
						

							<!--<div class="btn-group purple large right" style="position: relative; top:-35px;">
								<a></a>총 {{ctrl.page.totalElements}}</span>건</a>
								<button type="button" ng-click="ctrl.reset()" class="button" style="height: 26px; line-height: 26px;" ng-disabled="myForm.$pristine">Reset</button>
								<br>
							</div>-->
						</div>
						<div id="rightHeader">
							
						</div>
					</div>

					<div class="table-wrap">
					<table class="board-list">
						<thead>
							<tr>
								<th align="center" style="width:10%;">글번호</th>
								<th align="center">제목</th>
								<th align="center" style="width:10%;">글쓴이</th>
								<th align="center" style="width:10%;">등록일</th>
								<th align="center" style="width:10%;">조회수</th>
								<th align="center" style="width:15%;">조회/삭제</th>
							</tr>
							</tr>
						</thead>
					<tbody> 
							<tr data-ng-repeat="boardlist in ctrl.page.content">
								<td align="center"><span ng-bind="{{$index+1}}"></span></td>
								<!-- 글번호 -->
								<td align="left">
									<!-- 레벨의 수만큼 글을 뒤로 민다 --> 
									<span ng-repeat="n in [].constructor(boardlist.replylevel) track by $index">&nbsp;&nbsp; </span> <span ng-bind="boardlist.title"></span>
								</td>

								<td align="center"><span ng-bind="boardlist.name"></span></td>
								<td align="center">{{boardlist.regdate | date:"yy.MM.dd"}}</td>

								<td align="center"><span ng-bind="boardlist.readcount"></span></td>
								<td>
									<div class="purple large">
										<button type="button" ng-click="ctrl.edit(boardlist.id)" class="button" style="height: 26px; line-height: 26px;">
											{{boardlist.id}}
										<button type="button"  ng-click="ctrl.edit(boardlist.id)" class="button purple" style="height: 26px; line-height: 26px;">조회</button>
											 <a href="/boardlist2/{{boardlist.id}}" title="게시판으로 이동">수정하기</a>
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
								<a href="/movie/created3"
									class="button purple" id="myQnaBtn" title="게시판으로 이동">게시판 작성</a>
								<!-- btn-layer-open -->
							</div>
							<div>
								<nav class="pagination">
								<ul class="a pagination" style="padding-top: 0px;">

									<li ng-class="{disabled: ctrl.page.number === 0}">
										<a ng-show="ctrl.page.number !== 0" class="a pointer" ng-click="ctrl.list(ctrl.page.number-1)">Prev</a>
										<span ng-show="ctrl.page.number === 0">Prev</span>
									</li>
									<li ng-class="{disabled: ctrl.page.number === ctrl.page.totalPages - 1}">
										<a ng-show="ctrl.page.number !== ctrl.page.totalPages - 1" class="a,pointer" ng-click="ctrl.list(ctrl.page.number+1)">Next</a>
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
		<jsp:include page="../layout/footerGrey.jsp"></jsp:include>
		<!-- //footer -->


		
</body>

</html>