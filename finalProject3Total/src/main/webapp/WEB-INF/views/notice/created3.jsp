<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); String cp = request.getContextPath(); %>

<link rel="stylesheet" type="text/css" href="/resources/css/style.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/list.css" />

<!--  For AngularJS -->
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
<script src="<c:url value='/js/app.js' />"></script>
<script src="<c:url value='/js/boardlist_service.js'/>"></script>
<script src="<c:url value='/js/boardlist_controller.js'/>"></script>

<script type="text/javascript" src="/resources/js/util.js"></script>
<script type="text/javascript">

	function sendIt(){
		
		var f = document.myForm;
		
		str = f.subject.value;
		str = str.trim();
		if(!str){
			alert("\n제목을 입력하세요.");
			f.subject.focus();
			return;
		}
		f.subject.value = str;
		
		str = f.name.value;
		str = str.trim();
		if(!str){
			alert("\n이름을 입력하세요.");
			f.name.focus();
			return;
		}		
		
		/* if(!isValidKorean(str)){
			alert("\n이름을 정확히 입력하세요.");
			f.name.focus()
			return;
		}	*/	
		f.name.value = str;
		
		if(f.email.value){
			if(!isValidEmail(f.email.value)){
				alert("\n정상적인 E-Mail을 입력하세요.");
				f.email.focus();
				return;
			}
		}
		
		str = f.content.value;
		str = str.trim();
		if(!str){
			alert("\n내용을 입력하세요.");
			f.content.focus();
			return;
		}
		f.content.value = str;
		
		str = f.pwd.value;
		str = str.trim();
		if(!str){
			alert("\n패스워드를 입력하세요.");
			f.pwd.focus();
			return;
		}
		f.pwd.value = str;
		
		f.action = "<%=cp%>
	/movie/created2";
		f.submit();

	}
</script>
</head>
<body ng-app="myBoard" class="ng-cloak" ng-controller="BoardlistController as ctrl">
	

	
<!-- header -->
<jsp:include page="../layout/headerWhite.jsp"></jsp:include>
<!--// header -->

<!-- container -->
	<div class="container has-lnb">
		
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
		
		<div class="inner-wrap">
			<div class="lnb-area addchat location-fixed">
				<nav id="lnb" class="ty2">
				<p class="tit">
					<a href="http://localhost/movie/article" title="고객센터">고객센터</a>
				</p>
				<ul>
					<li><a href="/movie/customer" title="고객센터 홈">고객센터</a></li>
					<li ><a href="#" title="자주 묻는 질문">자주 묻는 질문</a></li>
					<!-- <li class="on"><a href="/movie/created" title="공지사항">공지사항(원본)</a></li> -->
					<li ><a href="/movie/list" title="공지사항">공지사항</a></li>
					<li><a href="/movie/list2" title="1:1문의">1:1문의</a></li>
					<li class="on"><a href="/boardlist" title="게시판">게시판</a></li>
					<!-- <li><a href="http://localhost:8080/movie/created" title="게시판(created)">게시판(원본)</a></li> -->
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
						메가박스 고객센터 <span>Dream center</span>
					</p>
					<p class="time">
						<i class="iconset ico-clock"></i> 10:00~19:00
					</p>
				</div>
				</nav>
			</div>

			<div id="contents" class="location-fixed">
				<h2 class="tit">게시글 작성</h2>

				<div id="bbs">
					<div ng-controller="BoardlistController as ctrl">
						<!-- 	<form action="" method="post" name="myForm"> -->
						<form ng-submit="ctrl.submit()" name="myForm"
							class="form-horizontal">

							<input type="hidden" ng-model="ctrl.boardlist.id" />

							<div class="table-wrap">
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
											<td colspan="3"><input type="radio" id="aq1" name="inqMclCd" value="QD01M01" data-cd="QD_BRCH_DIV_CD" checked="">
												<label for="aq1">자유게시판</label> 
											<input type="radio" id="aq2" name="inqMclCd" class="ml20" value="QD01M02" data-cd="QD_ETC_DIV_CD"> 
												<label for="aq2">후기게시판</label></td>
										</tr>
										<tr>
											<th scope="row"><label for="title">제목</label> <em class="font-orange">*</em></th>
											<td colspan="3"><input type="text" id="title" ng-model="ctrl.boardlist.title" class="input-text, title form-control input-sm" value="" maxlength="50" placeholder="" required>
											<div class="has-error" ng-show="myForm.$dirty"></div></td>
										</tr>

										<tr>
											<th scope="row"><label for="name">글쓴이</label> <em class="font-orange">*</em></th>
												<td><input type="text" id="name" ng-model="ctrl.boardlist.name" class="input-text w650px, name form-control input-sm" value="" maxlength="15" placeholder="" required ng-maxlength="20">
											<div class="has-error" ng-show="myForm.$dirty"></div></td>
											<th scope="row"><label for="passwd">패스워드</label> <em class="font-orange">*</em></th>
											<td>
												<input type="password" id="passwd" ng-model="ctrl.boardlist.passwd" class="input-text w650px,  passwd form-control input-sm"
												value="" maxlength="15" placeholder="" required ng-maxlength="20">
												<div class="has-error" ng-show="myForm.$dirty"></div>
											</td>
										</tr>



										<tr>
											<th scope="row"><label for="conten">내용</label> 
												<em class="font-orange , col-md-2 control-lable">*</em></th>
											<td colspan="3">
												<div class="textarea">
													<textarea name="content" rows="5" cols="30" title="내용입력" ng-model="ctrl.boardlist.content" id="content" placeholder="※내용을 작성하세요" class="input-textarea , content form-control input-sm" required style="height: 320px;"></textarea>
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
										<tr>
											<th scope="row">사진첨부</th>
											<td colspan="3">
												<div class="upload-image-box">

													<div class="info-txt">
														<p>* JPEG, PNG 형식의 5M 이하의 파일만 첨부 가능합니다. (최대 5개)</p>


														<button type="button" id="uploadBtn" class="btn-image-add">
															<span>파일선택</span>
														</button>

														<p>* 개인정보가 포함된 이미지 등록은 자제하여 주시기 바랍니다.</p>
													</div>

													<div id="imgList"></div>

												</div>
											</td>
										</tr>
										<!--// 2019-02-14 사진첨부 마크업 수정 -->



									</tbody>
								</table>

							</div>


							<!-- <div class="bbsCreated_noLine">
							<dl>
								<dt>패스워드</dt>
								<dd>
									<input type="password" name="pwd" size="35" maxlength="7"
										class="boxTF" /> &nbsp;(게시물 수정 및 삭제시 필요!!)
								</dd>
							</dl>
						</div> -->

							<!--<div class="row">

								<div class="form-actions floatRight">

									<input type="submit"
										value="{{!ctrl.boardlist.id ? '등록하기' : 'Update'}}"
										class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid">

									<button type="button" ng-click="ctrl.reset()"
										class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset

										Form</button>

								</div>

							</div>-->


							<br /> <br />
							<div id="bbsCreated_footer" align="center" class="form-actions floatRight">
								<input type="submit" value=" {{!ctrl.boardlist.id ? '등록하기' : 'Update'}}"  class="button purple large" onclick="sendIt();" ng-disabled="myForm.$invalid" />		
								<input type="reset" value=" 다시입력 " class="button purple large" onclick="document.myForm.subject.focus();" />			
								<input type="button" value=" 돌아가기 " class="button purple large" onclick="javascript:location.href='<%=cp%>/boardlist';" />
							</div>
						</form>
					</div>
					<div class="quick-area" style="display: none;">
						<a href="https://www.megabox.co.kr/support/inquiry"
							class="btn-go-top" title="top" style="position: fixed;">top</a>
					</div>
				</div>
				</div></div></div>
				
<div class="quick-area" style="display: none;">
	<a href="support/inquiry" class="btn-go-top" title="top" style="position: fixed;">top</a>
</div>

<!-- footer -->
<jsp:include page="../layout/footerGrey.jsp"></jsp:include>
<!-- //footer -->

</body>
			</html>