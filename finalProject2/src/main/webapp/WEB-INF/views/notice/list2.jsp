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



<script type="text/javascript">

	function sendIt(){
		
		var f = document.searchForm;
		f.action = "<%=cp%>/movie/list2";
		f.submit();
	}
		
	
</script>

</head>
<body>


		<!-- header -->
		<jsp:include page="../layout/headerWhite.jsp"></jsp:include>
		<!--// header -->


<div class="container has-lnb">
            <div class="page-util">
                 <div class="inner-wrap" id="myLoaction"><div class="location">
		<span>Home</span>
		<a href="https://www.megabox.co.kr/mypage" title="나의 메가박스 페이지로 이동">나의 메가박스</a>
		<a href="https://www.megabox.co.kr/mypage/myinquiry" title="나의 문의내역 페이지로 이동">나의 문의내역</a>
	<a href="http://localhost:8080/movie/list2" title="1:1 문의내역 페이지로 이동">1:1 문의내역</a></div></div>
            </div>

            <div class="inner-wrap">
                


<script type="text/javascript">
$(function(){
	var url = location.pathname + location.search;
    $("div.lnb-area > nav#lnb a").filter(function(i,o) { return $(o).attr("href") == url;}).last().parent().addClass("on");

	$.get('/on/oh/ohh/MyScnBoard/selectCponMbNoCount.do')
			.done(function (data) {
				if (data.todayPubOthcomCponCnt > 0) {
					var i = $('<span>메가박스/제휴쿠폰 </span><i class="iconset ico-theater-new"></i>');

					$('#discountCoupon')
							.empty()
							.append(i);
				} else {
					// do nothing
				}
			});
});
</script>


	<div class="lnb-area">
		<nav id="lnb">
			<p class="tit"><a href="https://www.megabox.co.kr/mypage" title="나의 메가박스">나의 메가박스</a></p>

			<ul>
				<li class=""><a href="https://www.megabox.co.kr/mypage/bookinglist" title="예매/구매내역">예매/구매내역</a></li>
                   <li>
                   	<a href="https://www.megabox.co.kr/mypage/movie-coupon" title="영화/스토어 관람권">영화/스토어 관람권</a>
					<ul class="depth3">
						<li><a href="https://www.megabox.co.kr/mypage/movie-coupon" title="영화관람권">영화관람권</a></li>
						<li><a href="https://www.megabox.co.kr/mypage/store-coupon" title="스토어 교환권">스토어 교환권</a></li>
					</ul>
				</li>
				<li><a id="discountCoupon" href="https://www.megabox.co.kr/mypage/discount-coupon" title="메가박스/제휴쿠폰">메가박스/제휴쿠폰</a></li>
				<!-- <li><a href="/on/oh/ohh/Mvtckt/GiftCardL.do">메가박스 기프트카드</a></li> -->
				<li>
					<a href="https://www.megabox.co.kr/mypage/point-list" title="멤버십 포인트">멤버십 포인트</a>
					<ul class="depth3">
						<li><a href="https://www.megabox.co.kr/mypage/point-list" title="포인트 이용내역">포인트 이용내역</a></li>
						<li><a href="https://www.megabox.co.kr/mypage/card-list" title="멤버십 카드관리">멤버십 카드관리</a></li>
						<li><a href="https://www.megabox.co.kr/mypage/milk-service" title="MiL.k 제휴서비스">MiL.k 포인트</a></li>
					</ul>
				</li>
				<li><a href="https://www.megabox.co.kr/mypage/moviestory" titel="나의 무비스토리">나의 무비스토리</a></li>
				<li><a href="https://www.megabox.co.kr/mypage/myevent" title="나의 이벤트 응모내역">나의 이벤트 응모내역</a></li>
				<li class="on"><a href="https://www.megabox.co.kr/mypage/myinquiry" title="나의 문의내역">나의 문의내역</a></li>
				<li><a href="https://www.megabox.co.kr/mypage/mydiscount" title="자주쓰는 할인 카드">자주쓰는 카드 관리</a></li>
				<li>
					<a href="https://www.megabox.co.kr/mypage/myinfo?returnURL=info" title="회원정보">회원정보</a>
					<ul class="depth3">
						<li><a href="https://www.megabox.co.kr/mypage/myinfo?returnURL=info" title="개인정보 수정">개인정보 수정</a></li>
						<li><a href="https://www.megabox.co.kr/mypage/additionalinfo" title="선택정보 수정">선택정보 수정</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>




                


<script type="text/javascript">
	var cd = '';
	var qnaDtlsYn = '';

	$(function() {
		// 검색 클릭
		$('#searchBtn').on('click', function() {
			$('[name=currentPage]').val(1);
			//fn_selectIrList($('.tabBtn.on').find('button').data('no'));
			fn_selectIrList($('.tab-block li.on a').data('cd'));
		});

		// 검색 엔터키
		$('#searchTxt').on('keydown', function(e) {
			if(e.keyCode == 13) {
				$('[name=currentPage]').val(1);
				//fn_selectIrList();
				fn_selectIrList($('.tab-block li.on a').data('cd'));
			}
		});

		// 탭 클릭
		$('.tab-block a').on('click', function(e) {
			e.preventDefault();

			var cd = $(this).data('cd');
			var idx = $(this).parent().index();

			// 탭클릭시 검색조건 초기화
			if (qnaDtlsYn == 'Y') {
				qnaDtlsYn = 'N';
			} else {
				$('#custInqStatCd').val('').change();
				$('#searchTxt').val('');
				$('[name=currentPage]').val(1);
			}

			$('.tab-block li.on').removeClass('on');
			$(this).parent().addClass('on');

			if(idx == 0) {
				$('#inqBtn').html('1:1 문의하기');
				$('#tabDesc').html('고객센터를 통해 남기신 1:1 문의내역을 확인하실 수 있습니다.');
			} else if(idx == 1) {
				$('#inqBtn').html('단체관람/대관 문의하기');
				$('#tabDesc').html('고객센터를 통해 남기신 단체/대관 문의내역을 확인하실 수 있습니다.');
			} else {
				$('#inqBtn').html('분실물 문의하기');
				$('#tabDesc').html('고객센터를 통해 남기신 분실물 문의내역을 확인하실 수 있습니다.');
			}

			fn_selectIrList(cd);
		});

		// 문의 버튼
		$('#inqBtn').on('click', function(e) {
			e.preventDefault();

			var url = '';
			var btnText = $(this).text();

			if(btnText == '1:1 문의하기') url = '/support/inquiry';
			else if(btnText == '단체관람/대관 문의하기') url = '/support/rent';
			else url = '/support/lost/form';

			location.href = url;
		});

		if(cd == 'INQD03') $('.tab-block a').eq(1).click();
		else if(cd == 'INQD02') $('.tab-block a').eq(2).click();
		else $('.tab-block a').eq(0).click();

		MegaboxUtil.Common.bindSelectBox(); // 셀렉트 박스 라이브러리 적용
	});

	// 문의 목록 조회
	function fn_selectIrList(cd) {
		var currentPage = $('[name=currentPage]').val() ? $('[name=currentPage]').val() : 1;
		var inqLclCd = cd || 'INQD01';

		var params = {
			custInqStatCd: $('#custInqStatCd').val(),
			searchTxt: $('#searchTxt').val(),
			inqLclCd: inqLclCd
		};

		var options = {};
		options.url = '/on/oh/ohh/MyInq/inqList.do';
		options.paramData = params;
		options.currentPage = currentPage;

		options.successCallBack = function(data) {
			var totCount  = Number(data.totCount);
			var target = $("div.table-wrap > table.board-list > tbody");

			target.find('tr').remove();

			$('#totalCnt').text(totCount);

			if(data.list.length > 0) {
				var tr, td1, td2, td3, td4, td5, td6, a;

				target.find('tr').remove();

				$.each(data.list, function(i, v) {
					var custInqStatNm = '';
					// 답변완료(메일+SMS), 답변완료(메일), 답변완료(SMS) ===> 답변완료
					if (v.custInqStatCd == "INQST3" || v.custInqStatCd == "INQST4" || v.custInqStatCd == "INQST5") {
						custInqStatNm = "답변완료";
					} else {
						custInqStatNm = v.custInqStatNm;
					}

					tr = $('<tr>');
					a = $('<a>').attr({ 'href': '#', 'class': 'moveBtn', 'data-no': v.custInqSn, 'title': '문의내역 상세보기' }).html(v.custInqTitle);
					td1 = $('<td>').text(totCount - (v.rowNum - 1));
					td2 = $('<td>').html(v.brchNm ? v.brchNm : '메가박스');
					td3 = $('<td>').html(v.inqSclNm);
					td4 = $('<td>').attr('class', 'a-l').append(a);
					td5 = $('<td>').html(custInqStatNm);
					td6 = $('<td>').text(v.fstRegDtStr);

					tr.append(td1).append(td2).append(td3).append(td4).append(td5).append(td6);
					target.append(tr);
				});

				fn_bindMoveEvent(inqLclCd);
			} else {
				tr = $('<tr>');
				td1 = $('<td>').attr('colspan', 6).text('목록이 없습니다.');

				tr.append(td1);
				target.append(tr);
			}
		};

		gfn_setPage(options);
	}

	// 제목 버튼 이벤트
	function fn_bindMoveEvent(cd) {
		$('.moveBtn').off();
		$('.moveBtn').on('click', function(e) {
			e.preventDefault();

			var form = MegaboxUtil.Form.createForm();
			//form.append('<input type="hidden" name="custInqSn" value="' + $(this).data('no') + '">');
			form.append('<input type="hidden" name="custInqStatCd" value="' + $('#custInqStatCd').val() + '">');
			form.append('<input type="hidden" name="searchTxt" value="' + $('#searchTxt').val() + '">');
			form.append('<input type="hidden" name="currentPage" value="' + $('.pagination .active').text() + '">');
			form.append('<input type="hidden" name="cd" value="' + $('.tab-block li.on a').data('cd') + '">');

			var custInqSn = $(this).data('no');

			form.attr('action', '/mypage/myinquiry/detail?custInqSn='+custInqSn);
			form.submit();
		});
	}
</script>

<input type="hidden" name="currentPage" value="1">

<div id="myLoactionInfo" style="display: none;">
	<div class="location">
		<span>Home</span>
		<a href="https://www.megabox.co.kr/mypage" title="나의 메가박스 페이지로 이동">나의 메가박스</a>
		<a href="https://www.megabox.co.kr/mypage/myinquiry" title="나의 문의내역 페이지로 이동">나의 문의내역</a>
	</div>
</div>

<div id="contents" class="">
	<h2 class="tit">나의 문의내역</h2>

	<div class="tab-block">
		<ul>
			<li data-url="/mypage/myinquiry?cd=INQD01" class="on"><a href="https://www.megabox.co.kr/mypage/myinquiry#" class="btn" data-cd="INQD01" title="1:1 문의내역 탭으로 이동">1:1 문의내역</a></li>

		</ul>
	</div>

	<div class="mypage-infomation mt20">
		<ul class="dot-list mb20">
			<li id="tabDesc">고객센터를 통해 남기신 1:1 문의내역을 확인하실 수 있습니다.</li>
			<!-- <li>문의하시기 전 <a href="/support/faq" class="a-link"><strong>자주묻는질문</strong></a>을 확인하시면 궁금증을 더욱 빠르게 해결하실 수 있습니다</li> -->
		</ul>

		<div class="btn-group right">
			<a href="http://localhost:8080/movie/created2" class="button" id="inqBtn" title="1:1 문의하기">1:1 문의하기</a>
		</div>
	</div>

	<div class="board-list-util mb10">
		<p class="result-count">
			<!-- to 개발 : 검색을 안한 경우 -->
		<!-- 	<strong>전체 (<b id="totalCnt">0</b>건)</strong> -->
		</p>

		<div class="dropdown bootstrap-select bs3"><select id="custInqStatCd" onchange="javascript:$(&#39;#searchBtn&#39;).click();" class="" tabindex="-98">
			<option value="">전체</option>
			
				
					<option value="INQST1">미답변</option>
				
			
				
					<option value="INQST2">답변완료</option>
				
		
		</select>

		<form action="" method="post" name="searchForm">
			<select name="searchKey" class="selectField">
				<option value="subject">제목</option>
				<option value="name">작성자</option>
				<option value="content">내용</option>
			</select>
			<input type="text" name="searchValue" class="textField"/>
			<input type="button" value=" 검 색 " class="btn2" 	
			onclick="sendIt()"/>		
		</form>		
	</div>

	<div class="table-wrap">
		<table class="board-list a-c">
			<caption>번호, 극장, 유형, 제목, 답변상태, 등록일 순서로 보여주는 1:1 문의 내역 표입니다</caption>
			<colgroup>
				<col style="width:80px">
				<col style="width:140px;">
				<col style="width:120px;">
				<col>
				<col style="width:160px;">
				<col style="width:100px;">
			</colgroup>
		
			<div id="bbsList">

	<!-- <div id="bbsList_title">
		게 시 판(boot jsp)
	</div> -->
	
	<div id="bbsList_list">
		<div id="title">
			<dl>
				<dt class="num">번호</dt>
				<dt class="subject">제목</dt>
				<dt class="name">작성자</dt>
				<dt class="created">작성일</dt>
				<dt class="hitCount">조회수</dt>
			</dl>
		</div>
		<div id="lists">
		<c:forEach var="dto" items="${lists }"> <%-- BoardDTO : lists와 동일 EL로 받은것  --%>
			<dl>								<%-- EL로 받은것은 변수명을 게터로받지않고 그대로 사용 그렇다고 DAO의 게터세터를 지우면안됌. --%>
				<dd class="num">${dto.num }</dd> 
				<dd class="subject">
				<a href="${articleUrl }&num=${dto.num }">
				${dto.subject }</a>
				</dd>
				<dd class="name">${dto.name }</dd>
				<dd class="created">${dto.created }</dd>
				<dd class="hitCount">${dto.hitCount }</dd>
			</dl>
		</c:forEach>
		</div>
		<div nav class="pagination" id="footer">
			<c:if test="${dataCount!=0 }">
				${pageIndexList }
			</c:if>
			<c:if test="${dataCount==0 }">
				등록된 게시물이 없습니다.
			</c:if>
		
	</div>
	
</div>


	

				

				
			</div>
		</table>
	</div>

	<!-- pagination -->
	<nav class="pagination"></nav>
	<!--// pagination -->
</div>

            </div>
        </div>
   
	<!-- footer -->
	<jsp:include page="../layout/footerGrey.jsp"></jsp:include>
    <!-- //footer -->


</body>
</html>







