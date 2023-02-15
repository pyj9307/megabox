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

	<%-- function sendIt(){
		
		var f = document.searchForm;
		f.action = "<%=cp%>
	/movie/boardlist";
		f.submit();
	} --%>
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
				<p class="tit">
					<a href="#" title="고객센터">고객센터</a>
				</p>
				<ul>
					<li><a href="/movie/customer" title="고객센터 홈">고객센터</a></li>
					<li><a href="#" title="자주 묻는 질문">자주 묻는 질문</a></li>
					<!-- <li class="on"><a href="/movie/created" title="공지사항">공지사항(원본)</a></li> -->
					<li><a href="http://localhost:8080/movie/list" title="공지사항">공지사항</a></li>
					<li><a href="/movie/list2" title="1:1문의">1:1문의</a></li>
					<li class="on"><a href="/boardlist"
						title="게시판">게시판</a></li>
					<!-- <li><a href="http://localhost:8080/movie/created" title="게시판(created)">게시판(원본)</a></li> -->
					<li><a href="#" title="단체관람 및 대관문의">단체관람 및 대관문의</a></li>
					<li><a href="#" title="분실물 문의">분실물 문의</a></li>
					<li><a href="#" title="이용약관">이용약관</a></li>
					<li><a href="#" title="위치기반서비스이용약관">위치기반서비스이용약관</a></li>
					<li><a href="#" title="개인정보처리방침">개인정보처리방침</a></li>
					<li><a href="#" style="border-radius: 0 0 10px 10px;"
						title="스크린배정수에관한기준">스크린배정수에관한기준</a></li>
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

				
				<!-- 검색창 -->




				<div id="bbs">
					<div ng-controller="BoardlistController as ctrl">
						<!-- 	<form action="" method="post" name="myForm"> -->
						<form ng-submit="ctrl.submit()" name="myForm"
							class="form-horizontal">

							<input type="hidden" ng-model="ctrl.boardlist.id" />

							<div id="bbsCreated">
								<table class="board-form va-m">
									<colgroup>
										<col style="width: 150px;">
										<col>
										<col style="width: 150px;">
										<col>
									</colgroup>
									<tbody>
										<tr>
											<th scope="row">게시판<em class="font-orange">*</em></th>
											<td colspan="3"><input type="radio" id="aq1"
												name="inqMclCd" value="QD01M01" data-cd="QD_BRCH_DIV_CD"
												checked=""> <label for="aq1">자유게시판</label> <input
												type="radio" id="aq2" name="inqMclCd" class="ml20"
												value="QD01M02" data-cd="QD_ETC_DIV_CD"> <label
												for="aq2">후기게시판</label></td>
										</tr>



										<tr>
											<th scope="row"><label for="title">제목</label> <em
												class="font-orange">*</em></th>
											<td><input type="text" id="title"
												ng-model="ctrl.boardlist.title"
												class="input-text, title form-control input-sm" value=""
												maxlength="50" placeholder="Enter your Title" required>

												<div class="has-error" ng-show="myForm.$dirty"></div></td>

										</tr>




										<tr>

											<th scope="row"><label for="name">글쓴이</label> <em
												class="font-orange">*</em></th>
											<td><input type="text" id="name"
												ng-model="ctrl.boardlist.name"
												class="input-text w650px, name form-control input-sm"
												value="" maxlength="15" placeholder="Enter your Name"
												required ng-maxlength="20">
												<div class="has-error" ng-show="myForm.$dirty"></div></td>


											<th scope="row"><label for="passwd">패스워드</label> <em
												class="font-orange">*</em></th>
											<td><input type="password" id="passwd"
												ng-model="ctrl.boardlist.passwd"
												class="input-text w650px,  passwd form-control input-sm"
												value="" maxlength="15" placeholder="Enter your Password"
												required ng-maxlength="20">
												<div class="has-error" ng-show="myForm.$dirty"></div></td>
										</tr>



										<tr>
											<th scope="row"><label for="conten">내용</label> <em
												class="font-orange , col-md-2 control-lable">*</em></th>
											<td colspan="3">
												<div class="textarea">
													<textarea name="content" rows="5" cols="30" title="내용입력"
														ng-model="ctrl.boardlist.content" id="content"
														placeholder="※내용 게시"
														class="input-textarea , content form-control input-sm"
														required style="height: 320px;"></textarea>
													<div class="has-error" ng-show="myForm.$dirty"></div>
													<div class="util">
														<p class="count">
															<span id="textareaCnt">0</span> / 2000
														</p>
													</div>
												</div>
											</td>
										</tr>

										<!-- 2019-02-14 사진첨부 마크업 수정 -->


										<tr align="left">



											<th align="center">글번호</th>

											<th align="center">제목</th>

											<th align="center">글쓴이</th>

											<th align="center">등록일</th>

											<th align="center">조회수</th>

											<th align="center">조회/삭제</th>

	<!-- 제일 아쉬운 부분이며 AJAX비동기식으로 버튼 클릭시 데이터를 다음 페이지로 자동으로 넣어 구현 하고 싶었으나
											페이지에 데이터를 불러오는것 까지 성공하였지만 한 페이지 안에서 고유 ID값 마다 정보를 다르게 불러오는것에서 실패 하였다. -->


										</tr>
										<tr data-ng-repeat="boardlist in ctrl.page.content">

											<td align="center"><span ng-bind="{{$index+1}}"></span></td>


											<td align="left">
												<!-- 레벨의 수만큼 글을 뒤로 민다 --> <span
												ng-repeat="n in [].constructor(boardlist.replylevel) track by $index">

													&nbsp;&nbsp; </span> <span ng-bind="boardlist.title"></span>

											</td>



											<td align="center"><span ng-bind="boardlist.id"></span></td>




											<td align="center">{{boardlist.regdate | date:"yy.MM.dd
												hh:mm"}}</td>

											<td align="center"><span ng-bind="boardlist.readcount"></span></td>

											<td >

												<button type="button"  ng-click="ctrl.edit(boardlist.id)"
													class="btn btn-success custom-width">게시글 조회</button>

												<button type="button" ng-click="ctrl.delete(boardlist.id)"
													class="btn btn-success custom-width">삭제하기</button>

											</td>

										</tr>
										<!--// 2019-02-14 사진첨부 마크업 수정 -->
								</table>

							</div>





							<br /> <br />
							<div id="bbsCreated_footer" align="center"
								class="form-actions floatRight">
								<input type="submit"
									value=" {{!ctrl.boardlist.id ? '등록하기' : 'Update'}}"
									class="button purple large" onclick="sendIt();"
									ng-disabled="myForm.$invalid" />
									
									 <input type="reset"
									value=" 다시입력 " class="button purple large"
									onclick="document.myForm.subject.focus();" /> 
									
									<input
									type="button" value=" 돌아가기 " class="button purple large"
									onclick="javascript:location.href='<%=cp%>/boardlist';" />










							</div>
							</tbody>
						</form>



					</div>


					<div class="quick-area" style="display: none;">
						<a href="https://www.megabox.co.kr/support/inquiry"
							class="btn-go-top" title="top" style="position: fixed;">top</a>
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