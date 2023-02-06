<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<title>MEET PLAY SHARE, 메가박스</title>

<link rel="stylesheet" type="text/css" href="/resources/css/style.css"/>
<link rel="stylesheet" type="text/css" href="/resources/css/list.css"/>
<link rel="stylesheet" type="text/css" href="/resources/css/main_files/megabox.min.css" media="all">


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
		
		f.action = "<%=cp%>/movie/created2";
		f.submit();
		
	}

</script>


</head>
<body>

	<!-- header -->
	<jsp:include page="../layout/headerWhite.jsp"></jsp:include>
	<!--// header -->



<!-- container -->
	<div class="container has-lnb">
		<div class="page-util fixed">
			<div class="inner-wrap">
				<div class="location">
					<span>Home</span>
					<a href="https://www.megabox.co.kr/support" title="고객센터 페이지로 이동">고객센터</a>
					<a href="https://www.megabox.co.kr/support/notice" title="공지사항 페이지로 이동">공지사항</a>
				</div>

			</div>
		</div>

		<div class="inner-wrap">
			<div class="lnb-area addchat location-fixed">
				<nav id="lnb">
					<p class="tit"><a href="https://www.megabox.co.kr/support" title="고객센터">고객센터</a></p>
					<ul>
						<li><a href="http://localhost:8080/movie/list" title="고객센터 홈">고객센터 홈</a></li>
						<li ><a href="http://localhost:8080/movie/list" title="자주 묻는 질문">자주 묻는 질문</a></li>
						<li ><a href="http://localhost:8080/movie/list" title="공지사항">공지사항</a></li>
						<li class="on"><a href="http://localhost:8080/movie/created" title="1:1문의">1:1문의</a></li>
						<li><a href="http://localhost:8080/movie/list" title="단체관람 및 대관문의">단체관람 및 대관문의</a></li>
						<li><a href="http://localhost:8080/movie/list" title="분실물 문의">분실물 문의</a></li>
						<li><a href="http://localhost:8080/movie/list" title="이용약관">이용약관</a></li>
						<li><a href="http://localhost:8080//movielist" title="위치기반서비스이용약관">위치기반서비스이용약관</a></li>
						<li><a href="http://localhost:8080/movie/list" title="개인정보처리방침">개인정보처리방침</a></li>
						<li><a href="http://localhost:8080/movie/list" style="border-radius: 0 0 10px 10px;" title="스크린배정수에관한기준">스크린배정수에관한기준</a></li>
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

			<div id="contents" class="location-fixed">
				<h2 class="tit">공지사항</h2>
				
				<div class="mypage-infomation mb30">

					<div class="btn-group right">
						<a href="http://localhost:8080/movie/list" class="button purple" id="myQnaBtn" title="나의 문의내역 페이지로 이동">공지사항 목록</a><!-- btn-layer-open -->
					</div>
				</div>

				<div class="tab-block mb30">
					<ul>
						<li class="on tabBtn"><button type="button" class="btn tabBtn" data-no="" title="전체공지 보기">전체</button></li>
						
							<!-- <li class="tabBtn"><button type="button" class="btn" data-no="81" title="메가박스 공지 보기">메가박스 공지</button></li>
						
							<li class="tabBtn"><button type="button" class="btn" data-no="82" title="지점 공지 보기">지점 공지</button></li> -->
						
					</ul>
				</div>
				 
				 

	<form action="" method="post" name="myForm">
	<div id="bbsCreated">
		<table class="board-form va-m">
							<colgroup>
								<col style="width:150px;">
								<col>
								<col style="width:150px;">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><label for="name">이름</label> <em class="font-orange">*</em></th>
									<td><input type="text"  name ="name" class="input-text w150px" value="" maxlength="15"></td>
									<th scope="row"><label for="qnaRpstEmail">이메일</label> <em class="font-orange">*</em></th>
									<td><input type="text" name="email"  class="input-text" value="" maxlength="50"></td>
								</tr>
										
								
								<tr>
									<th scope="row"><label for="qnaCustInqTitle">제목</label> <em class="font-orange">*</em></th>
									<td colspan="3"><input type="text" name="subject"  class="input-text" maxlength="100"></td>
								</tr>
								<tr>
									<th scope="row"><label for="textarea">내용</label> <em class="font-orange">*</em></th>
									<td colspan="3">
										<div class="textarea">
											<textarea  name="content" rows="5" cols="30" title="내용입력" placeholder="※ 불편사항이나 문의사항을 남겨주시면 최대한 신속하게 답변 드리겠습니다. 
 ※ 문의 내용에 개인정보(이름, 연락처, 카드번호 등)가 포함되지 않도록 유의하시기 바랍니다." class="input-textarea"></textarea>
											<div class="util">
												<p class="count">
													<span id="textareaCnt">0</span> / 2000
												</p>
											</div>
										</div>
									</td>
								</tr>
								
								<tr>
	
									<th scope="row"><label for="name">패스워드</label> <em class="font-orange">*</em></th>
									<td><input type="password"  name ="pwd" class="input-text w150px" value="" maxlength="15"></td>
								</tr>
								
								
							</tbody>
						</table>
	
	</div>

	
	<br/>	<br/>	
	<div id="bbsCreated_footer" align="center">
		<input type="button" value=" 등록하기 " class="button purple large" onclick="sendIt();"/>
		<input type="reset" value=" 다시입력 " class="button purple large" 
		onclick="document.myForm.subject.focus();"/>
		<input type="button" value=" 작성취소 " class="button purple large" 
		onclick="javascript:location.href='<%=cp%>/movie/list';"/>
	</div>
	
	</form>

</div>


<div class="quick-area" style="display: none;">
	<a href="https://www.megabox.co.kr/support/inquiry" class="btn-go-top" title="top" style="position: fixed;">top</a>
</div>





</body>
</html>





























