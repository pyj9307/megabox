<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>

<link rel="stylesheet" type="text/css" href="/resources/css/style.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/list.css" />

<script type="text/javascript">
	function sendIt(){
		
		var f = document.searchForm;
		f.action = "<%=cp%>
	/movie/list";
		f.submit();
	}
</script>

<!-- header -->
<jsp:include page="../layout/headerWhite.jsp"></jsp:include>
<!--// header -->

<!-- container -->
<div class="container has-lnb">
	<div class="page-util">
		<div class="inner-wrap">
			<div class="location">
				<span>Home</span> <a href="#" title="고객센터 페이지로 이동">고객센터</a> 
					
			</div>

		</div>
	</div>

	<div class="inner-wrap">
		<div class="lnb-area addchat location-fixed">
			<nav id="lnb" class="ty2">
				<p class="tit">
					<a href="#" title="고객센터">고객센터</a>
				</p>
				<ul>
					<li class="on"><a href="/movie/customer" title="고객센터 홈">고객센터</a></li>
					<li><a href="#" title="자주 묻는 질문">자주 묻는 질문</a></li>
					<!-- <li class="on"><a href="/movie/created" title="공지사항">공지사항(원본)</a></li> -->
					<li ><a href="http://localhost:8080/movie/list"
						title="공지사항">공지사항</a></li>
					<li><a href="/movie/list2" title="1:1문의">1:1문의</a></li>
					<li><a href="/boardlist" title="게시판">게시판</a></li>
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


		<div id="contents" class="location-fixed">
			<h2 class="tit">고객센터</h2>

			<!-- input-search-area -->
			<div class="input-search-area mb30">
				<div class="input-area">
					<label for="search01" class="label">빠른검색</label>

					<div class="board-search w460px">
						<input type="search" id="searchTxt" title="검색어를 입력해 주세요."
							placeholder="검색어를 입력해 주세요." class="input-text" maxlength="15">
						<button type="button" class="btn-search-input" id="searchBtn">검색</button>
					</div>
				</div>

				<div class="btn-area"></div>
			</div>
			<!--// input-search-area -->


			<div class="custo-main">
				<div class="main-block">
					<div class="block-content" style="display: none">
						<a href="#" id="channelTalk" title="상담톡 이용">
							<p>
								<strong>상담톡 이용</strong> 상담톡으로 편리하게 문의해주세요.
							</p>
						</a>
					</div>
					<div class="block-content">
						<a href="/movie/list" title="공지사항">
							<p>
								<strong>공지사항</strong> 중요 공지<br/ > 공지사항
							</p>
						</a>
					</div>
					<div class="block-content">
						<a href="/movie/list2" title="1:1 문의 페이지로 이동">
							<p>
								<strong>1:1 문의</strong> 해결되지않은 문제가 있나요?<br />1:1문의로 문의주세요
							</p>
						</a>
					</div>
					<div class="block-content">
						<a href="/boardlist" title="게시판 이동">
							<p>
								<strong>게시판</strong> 게시판 및 후기가 궁금하시나요?<br />너의 후기를 적어줘.
							</p>
						</a>
					</div>
					
					
				</div>

				<div class="notice-wrap">
					<div class="block left">
						<div class="tit-area">
							<h3 class="tit small">자주 묻는 질문 BEST5</h3>

							<a href="/support/faq" class="more" title="더보기">더보기 <i
								class="iconset ico-arr-right-gray ml07"></i></a>
						</div>
						<div class="">
							<ol class="decimal-list">

								<li><a href="#" class="faqBtn" data-idx="1" title="질문 상세보기">
										<span class="font-roboto">1</span>&nbsp; <span
										class="font-gblue">[영화예매]</span> 인터넷 예매시 부분환불/교환이 가능한가요? <span
										class="date">2020.01.16</span>
								</a></li>

								<li><a href="#" class="faqBtn" data-idx="2" title="질문 상세보기">
										<span class="font-roboto">2</span>&nbsp; <span
										class="font-gblue">[극장]</span> ARS 이용안내 <span class="date">2023.01.04</span>
								</a></li>

								<li><a href="#" class="faqBtn" data-idx="3" title="질문 상세보기">
										<span class="font-roboto">3</span>&nbsp; <span
										class="font-gblue">[홈페이지/모바일]</span> 이름을 개명했는데 어디서 바꾸나요? <span
										class="date">2020.03.12</span>
								</a></li>

								<li><a href="#" class="faqBtn" data-idx="4" title="질문 상세보기">
										<span class="font-roboto">4</span>&nbsp; <span
										class="font-gblue">[영화예매]</span> 국가유공자 혜택은 어떻게 되나요? <span
										class="date">2022.05.30</span>
								</a></li>

								<li><a href="#" class="faqBtn" data-idx="5" title="질문 상세보기">
										<span class="font-roboto">5</span>&nbsp; <span
										class="font-gblue">[결제수단/관람권]</span> 멤버십에 등록한 영화관람권 삭제는 어떻게
										하나요? <span class="date">2022.01.04</span>
								</a></li>

							</ol>
						</div>
					</div>

					<div class="block right">
						<div class="tit-area">
							<h3 class="tit small">공지사항</h3>

							<a href="/support/notice" class="more" title="더보기">더보기 <i
								class="iconset ico-arr-right-gray ml07"></i></a>
						</div>

						<div class="decimal-list">
							<ol>

								<li><a href="#" class="moveBtn" data-no="10774"
									title="공지사항 상세보기"> <span class="font-purple"><i
											class="iconset ico-marker"></i> [창원]</span> [창원]임시 휴점 안내 <span
										class="date">2023.02.06</span>
								</a></li>

								<li><a href="#" class="moveBtn" data-no="10773"
									title="공지사항 상세보기"> <span class="font-gblue"><i
											class="iconset ico-notice"></i> [공지]</span> [GS&amp;POINT] 시스템 정기 점검
										안내 &#40;2/9&#41; <span class="date">2023.02.06</span>
								</a></li>

								<li><a href="#" class="moveBtn" data-no="10772"
									title="공지사항 상세보기"> <span class="font-gblue"><i
											class="iconset ico-notice"></i> [공지]</span> [해피머니] 이용 서비스 제한
										안내&#40;2/5&#41; <span class="date">2023.02.03</span>
								</a></li>

								<li><a href="#" class="moveBtn" data-no="10771"
									title="공지사항 상세보기"> <span class="font-gblue"><i
											class="iconset ico-notice"></i> [공지]</span> [삼성카드] 승인시스템 서비스 제한
										안내&#40;2/19&#41; <span class="date">2023.02.03</span>
								</a></li>

								<li><a href="#" class="moveBtn" data-no="10768"
									title="공지사항 상세보기"> <span class="font-purple"><i
											class="iconset ico-marker"></i> [코엑스]</span> [코엑스] 코엑스몰 전시회 진행에 따른
										주차안내문&#40;2/1~2/3&#41; <span class="date">2023.02.02</span>
								</a></li>

							</ol>
						</div>
					</div>

				</div>
			</div>
		</div>


	</div>
</div>
<!--// container -->

<div class="quick-area">
	<a href="/movie/list" class="btn-go-top" title="top">top</a>
</div>

<!-- footer -->
<jsp:include page="../layout/footerGrey.jsp"></jsp:include>
<!-- //footer -->

<!-- 모바일 때만 출력 -->
<div class="go-mobile" style="display: none;">
	<a href="support/notice#" data-url="https://m.megabox.co.kr">모바일웹으로
		보기 <i class="iconset ico-go-mobile"></i>
	</a>
</div>
</div>
<form id="mainForm"></form>

<div class="normalStyle"
	style="display: none; position: fixed; top: 0; left: 0; background: #000; opacity: 0.7; text-indent: -9999px; width: 100%; height: 100%; z-index: 100;">닫기</div>
<div class="alertStyle"
	style="display: none; position: fixed; top: 0px; left: 0px; background: #000; opacity: 0.7; width: 100%; height: 100%; z-index: 5005;"></div>
</body>
</html>