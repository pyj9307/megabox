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
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=yes">
<link rel="shortcut icon"
	href="https://www.megabox.co.kr/static/pc/images/favicon.ico">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<title>MEET PLAY SHARE, 메가박스</title>
<meta property="name" id="metaTagTitle" content="빠른예매 &lt; 예매">
<meta property="description" id="metaTagDtls"
	content="메가박스에서 영화를 간편하고 빠르게 예약해보세요.
">
<meta property="keywords" id="metaTagKeyword"
	content="메가박스 빠른예매, 빠른예매, 예매">

<meta property="fb:app_id" id="fbAppId" content="546913502790694">


<meta property="og:site_name" id="fbSiteName" content="메가박스">
<meta property="og:type" id="fbType" content="movie">
<meta property="og:url" id="fbUrl"
	content="https://www.megabox.co.kr/booking?rpstMovieNo=22004700">
<meta property="og:title" id="fbTitle" content="빠른예매 &lt; 예매">
<meta property="og:description" id="fbDtls"
	content="메가박스에서 영화를 간편하고 빠르게 예약해보세요.">
<meta property="og:image" id="fbImg"
	content="https://img.megabox.co.kr/SharedImg/metaTag/2020/02/04/gFfTzMwwiCxhBwcUV5TRGMFX9Cmoj64W.jpg">

<link rel="stylesheet" href="/resources/booking_2_files/megabox.min.css">
<style type="text/css">
.button1 {
	background-color: rgb(63, 0, 153);
	color: white;
	width: 300px;
	height: 50px;
	font-size: 17px;
	border: none;
	border-radius: 5px;
	margin: 20px 0 30px 0;
}

.button2 {
	background-color: rgb(63, 0, 153);
	color: white;
}

.button3 {
	background-color: rgb(63, 0, 153);
	color: white;
	width: 100px;
	height: 32px;
	font-size: 17px;
	border: none;
	border-radius: 5px;
	margin: 20px 0 30px 0;
}

.title {
	font-size: 50px;
	margin: 40px 0 30px 0;
}
</style>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script type="text/javascript" async=""
	src="resources/booking_2_files/analytics.js.다운로드"></script>
<script async="" src="resources/booking_2_files/js"></script>
<script>window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag('js', new Date()); gtag('config', 'UA-30006739-3');</script>
<script src="resources/booking_2_files/megabox.api.min.js.다운로드"></script>
<script src="resources/booking_2_files/lozad.min.js.다운로드"></script>
<script src="resources/booking_2_files/megabox.common.min.js.다운로드"></script>
<script src="resources/booking_2_files/megabox.netfunnel.min.js.다운로드"></script>
<script src="resources/booking_2_files/persona.js.다운로드" async=""></script>




<script type="text/javascript">

  		
  		var reset = ''

  		if( reset == 'Y' || location.pathname == '/booking' ){
  			history.replaceState('','',location.href);
  		}

        var _init = {
            cache	: Date.now(),
            path	: '/static/pc/js/'
        };

        document.write(
            '<script src="'+_init.path+'ui.common.js?v='+_init.cache+'"><\/script>'+
            '<script src="'+_init.path+'front.js?v='+_init.cache+'"><\/script>'
        );

        //RedirectException 발생시 메시지 처리
        

        //링크 구분에 따라 url 이동을 한다.
        function fn_goMoveLink(link_gbn, link_url) {
            alert("준비중 입니다");
            return;
        }
    </script>
<script src="resources/booking_2_files/ui.common.js.다운로드"></script>
<script
	src="resources/booking_2_files/m-ny8Ge9GlYZJI4cgMhnHRaYB3JpsfRgMZ-aSWeaR4SEAM4qWzAZAbZEZkUwWnZPUVNfQ01sOTEtVU9TeHFRAstB2JUHayDnTwPLQdiVB2sg508.js.다운로드"></script>
<script src="resources/booking_2_files/front.js.다운로드"></script>
<script src="resources/booking_2_files/bc4af2fa1e" async=""
	type="text/javascript"></script>
<script src="resources/booking_2_files/bc4af2fa1e(1)" async=""
	type="text/javascript"></script>
<script src="resources/booking_2_files/ts.wseq"></script>
</head>

<body>
	<div class="body-wrap">
		<script src="resources/booking_2_files/hmac-sha256.js.다운로드"></script>
		<script src="resources/booking_2_files/enc-base64-min.js.다운로드"></script>
		<script type="text/javascript">
/*전역변수
아이디
패스워드  입력 완료 체크 변수 필요
*/
var sValidateLoginIdAt  = 'N';	//로그인ID  입력 검증 여부
var sValidateLoginPwdAt = 'N';	//로그인PWD 입력 검증 여부
var submitIng = false;
var sCookieVal = "";	//쿠키값


$(function(){
	/*로그인 버튼 비활성*/
	$("#btnLogin").attr("disabled", true);

	/*쿠키조회 pc 아이디값 입력 및 자동로그인 체크*/
	sCookieVal = fn_getCookie('loginId');
	if (!(sCookieVal == null || sCookieVal == "")){
		$("#ibxLoginId").val(sCookieVal);
		$("input:checkbox[id='chkIdSave']").prop("checked",true);
		fn_validateInputVal("loginId",sCookieVal);
	}

	/*이벤트*/
	/*로그인*/
	$("#btnLogin").click(function(){
		var sLoginId   = $("#ibxLoginId").val();
		var sLloginPwd = $("#ibxLoginPwd").val();


		$('#error-text').text('');

		//아이디 저장 버튼 체크시 쿠키 설정
		if($("input:checkbox[id='chkIdSave']").is(":checked")){
			fn_setCookie('loginId',$("#ibxLoginId").val(),730);
		}
		//아이디 저장 체크 안했을때 쿠키 삭제
		else if(!$("input:checkbox[id='chkIdSave']").is(":checked")){
			fn_deleteCookie('loginId');
		}

		fn_selectMbLogin(sLoginId, sLloginPwd);	//로그인
	});

	/*아이디 입력시 체크 */
	$("#ibxLoginId").on("keyup", function(e){
		if(fn_validateInputVal("loginId", $(this).val())){
			if(e.keyCode == 13){$("#btnLogin").click();}
		} else {
			if(e.keyCode == 13){$("#ibxLoginPwd").focus();}
		}

		return;
	});

	/*비밀번호 입력체크 */
	$("#ibxLoginPwd").on("keyup", function(e){
		if(fn_validateInputVal("loginPwd", $(this).val())){
			if(e.keyCode == 13){$("#btnLogin").click();}
		}
		return;
	});


	// 페이스북 로그인
	$('.login-facebook').on('click', function(e) {
		e.preventDefault();

		var type = $(this).data('type');

		FB.login(function(response){
			if(response.authResponse.userID) {
				$.ajaxMegaBox({
					url: '/on/oh/ohg/MbLogin/selectMbSimpleLogin.rest',
					data: JSON.stringify({ simpleLoginId: response.authResponse.userID, type: type }),
					success: function (data) {
						if(data.result) {
							AppHandler.Common.goMain();  // 메인페이지로 이동
						} else {
							AppHandler.Common.alert('본 서비스는 메가박스 회원인 경우에만  이용하실 수 있습니다.\n회원가입 후 이용 부탁 드립니다.');
						}
					}
				});
			}
		});
	});
});

//쿠키설정
function fn_setCookie(cname, cvalue, exdays) {
	var d = new Date();
	d.setTime(d.getTime() + (exdays*24*60*60*1000));
	var expires = "expires="+d.toUTCString();
	document.cookie = cname + "=" + cvalue + "; " + expires + ";path=/";
}

//쿠키조회
function fn_getCookie(name) {
	var value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
	return value? value[2] : null;

}

//쿠키삭제
function fn_deleteCookie(name){
	var d = new Date();
	d.setTime(d.getDate() -1);
	var expires = "expires="+d.toUTCString();
	document.cookie = name + "=;" + expires + ";path=/";
}


//입력 문자 체크
function fn_validateInputVal(type,sVal,submitAt){
	if(type == "loginId") {		  //아이디

		if(sVal == ""){
			sValidateLoginIdAt = 'N';
		}
// 		if (!/((?=.{8,})(?=.*[0-9])(?=.*[a-zA-Z]).*$)/g.test(sVal)) {
// 			$('#error-text').text('아이디는 영문,숫자 조합 8자리 이상 12자리 이하 입니다.');
// 			sValidateLoginIdAt = 'N';
// 		}
// 		else if (/((?=.{8,})(?=.*[~!@#$%^&*+=-]).*$)/g.test(sVal)) {
// 			$('#error-text').text('아이디는 영문,숫자 조합 8자리 이상 12자리 이하 입니다.');
// 			sValidateLoginIdAt = 'N';
// 		}
		else{
			$('#error-text').text('');
			sValidateLoginIdAt = 'Y';
		}
	}
	else if(type == "loginPwd") { //패스워드
		if(sVal == ""){
			sValidateLoginPwdAt = 'N';
		}
// 		if (!/((?=.{10,})(?=.*[0-9])(?=.*[a-zA-Z]).*$)|((?=.{10,})(?=.*[~!@#$%^&*+=-])(?=.*[a-zA-Z]).*$)|((?=.{10,})(?=.*[!@#$%^&*+=-])(?=.*[0-9]).*$)/g.test(sVal)) {
// 			$('#error-text').text('비밀번호는 영문,숫자,특수기호 중 2가지 이상 조합하여 10자리 이상 16자리 이하 입니다.');
// 			sValidateLoginPwdAt = 'N';
// 		}
		else {
			$('#error-text').text('');
			sValidateLoginPwdAt = 'Y';
		}
	}

	if(submitAt != 'Y'){
		if(sValidateLoginIdAt == 'Y' && sValidateLoginPwdAt =='Y') {
			$("#btnLogin").attr("disabled", false);	//버튼활성화
		}
		else {
			$("#btnLogin").attr("disabled", true);	//버튼비활성화
		}
	}

	if(sValidateLoginIdAt == 'N' || sValidateLoginPwdAt =='N') {
		return false;
	}

	return true;
}


//패스워드 3개월 초과시 다음에 하기 버튼 누를경우 비밀번호 변경일자 오늘날자로 셋팅
//비번 재설정은 3개월 미변경시, 변경 안하면 로그인 할때마다 alert 나옴 20190507
function fn_updatePwdUptDt(sLoginId){
	var paramData = { loginId:sLoginId };
	$.ajaxMegaBox({
		url: "/on/oh/ohg/MbLogin/updateMbPwdReSet.rest",
		type: "POST",
		contentType: "application/json;charset=UTF-8",
		dataType: "json",
		data: JSON.stringify(paramData),
		success: function (data, textStatus, jqXHR) {
			//메인 화면으로 이동
			$(location).attr('href','/main');
		},
		error: function(xhr,status,error){
			var err = JSON.parse(xhr.responseText);
			alert(xhr.status);
			alert(err.message);
		}
	});
}

// 광고 쿠키 싱크 전달
function fn_adSetCookie(adMap){

	var adUrl = "https://ad.imp.joins.com/setcookie/megabox?gender=" + adMap.gender + "&birthday=" + adMap.birthday + "&genre=" + adMap.genre + "&theater=" + adMap.theater;
	if (document.domain.indexOf('t-') == -1){
		$.ajax({
			type: "get"
			, url: adUrl
			, data: ""
			, async : false
			, success: function(result) {
			console.log(result);
			}
			, error: function(err) {
			  console.log('error : ' + err.status);
			}
		});
	}

}

//로그인
function fn_selectMbLogin(sLoginId, sLloginPwd, snsLoginAt, redisKey){

	if(submitIng) return;

	/* 폼데이터 초기화 */
	$('#loginForm input[name=certType]').val();								//본인인증 모듈 코드값 초기화
	var sMenuId = $('input[name=menuId]').val();							//호출화면id
	var sMappingId = $('input[name=mappingId]').val();						//리턴URL
	var sSnsLogin = typeof snsLoginAt == 'undefined' ? "N" : snsLoginAt;	//sns로그인 여부

	var validLoginId  = sLoginId != null ? sLoginId.replace(/ /gi,"") : "";
	var validLoginPwd = sLloginPwd != null ? sLloginPwd.replace(/ /gi,"") : "";

	if(validLoginPwd != "simpleLogin"){
		if(validLoginId == "" || validLoginPwd == ""){
			gfn_alertMsgBoxSize('로그인 정보를 입력해 주세요.',400,250);	//로그인 정보를 입력해 주세요.
			return;
		}
	}

	var paramData = { loginId:sLoginId
					, loginPwd:sLloginPwd
					, menuId:sMenuId
					, mappingId:sMappingId
					, snsLogin:sSnsLogin
					, redisKey:redisKey
					};

	$.ajaxMegaBox({
		url: "/on/oh/ohg/MbLogin/selectMbLoginInfo.rest",
		data: JSON.stringify(paramData),
		//async: false,
		success: function (data, textStatus, jqXHR) {
			var revStr                 = data.revStr;
			var redisKey               = data.redisKey;
			var pwdErrCnt              = data.pwdErrCnt+1;
			var loginPwdLstUptDt       = data.loginPwdLstUptDt;
			var pwdUptDayco            = data.pwdUptDayco;
			var menuId                 = data.menuId;
			var mappingId              = data.mappingId;
			var marketRcvStr           = data.marketRcvStr
			var loginIdStar            = data.loginIdStar;

			//비밀번호 5회 오류	//본인인증 수단 선택 M-ME-DA-01
			if (revStr == "acctLock") {
				$('#loginForm input[name=redisKey]').attr('value',redisKey);
				$('#loginForm input[name=certType]').attr('value','SCRC05');
				var options = {};
				options.msg = '로그인정보가 5회 이상 잘못 입력되었습니다.\n회원인증 후 새로운 비밀번호를 설정해 주세요.';	//비밀번호 5회 이상 잘못 입력되었습니다.\n본인인증 후 새로운 비밀번호를 설정해 주세요.
				options.callback  = fn_mvPage;
				options.param = {confirm:'/on/oh/ohg/MbLogin/viewMbSimpleCertPage.rest'};	//간편인증페이지
				options.minWidth  = 400;
				options.minHeight = 250;
				gfn_alertMsgBox(options);
				return;
			}
			//비밀번호 변경9개월 초과 //비밀번호 재설정 M-ME-FI-04	비밀번호변경 9개월 체크 하지 않음. 무조건 3개월 연장
// 			else if (revStr == "loginPwdUpt9mm") {
// 				$('input[name=loginId]').attr('value',loginId);
// // 				mbLayer.toggle({id:revStr, msg:'회원님의 개인정보 보호를 위해 3개월마다 비밀번호 변경 안내해드리고 있습니다.\n마지막 변경일 : '+loginPwdLstUptDt+'('+pwdUptDayco+'일전)', btn:'비밀번호 변경', callback:fn_mvPage, param:'/pw-register', minHeight:200, type:'single' });
// 				var options      = {};
// 				options.msg      = '회원님의 개인정보 보호를 위해 3개월마다 비밀번호 변경 안내해드리고 있습니다.\n마지막 변경일 : '+loginPwdLstUptDt+'('+pwdUptDayco+'일전)';
// 				options.okBtnTxt = "비밀번호 변경";
// 				options.callback = fn_mvPage;
// 				options.param    = {confirm:'/pw-register'};
// 				options.minWidth  = 400;
// 				options.minHeight = 250;
// 				gfn_alertMsgBox(options);
// 				return;
// 			}
			//비밀번호 변경3개월 초과	//다음에하기, 비밀번호 재설정 M-ME-FI-04
			else if (revStr == "loginPwdUpt3mm") {
				$('#loginForm input[name=redisKey]').attr('value',redisKey);
				var options = {};
				options.msg        = '회원님의 개인정보 보호를 위해 3개월마다 비밀번호 변경안내를 시행하고 있습니다.\n안전한 서비스 이용을 위해 비밀번호 변경 후 이용바랍니다.\n지금 변경 하시겠습니까?\n\n마지막 변경일 : '+loginPwdLstUptDt+'('+pwdUptDayco+'일전)';
				options.confirmFn  = fn_mvPage;
				options.cancelFn   = fn_loginSuccessEvent;
				options.okBtnTxt     = "비밀번호 재설정";
			    options.cancelBtnTxt = "다음에 하기";
			    options.minWidth  = 400;
				options.minHeight = 300;
				options.param      = {confirm:"/pw-register" };
				gfn_confirmMsgBox(options);
				return;
// 				if(confirm('회원님의 개인정보 보호를 위해 3개월마다 비밀번호 변경안내를 시행하고 있습니다.\n안전한 서비스 이용을 위해 비밀번호 변경 후 이용바랍니다.\n지금 변경 하시겠습니까?\n\n마지막 변경일 : '+loginPwdLstUptDt+'('+pwdUptDayco+'일전)')){
// 					$('input[name=loginId]').attr('value',loginId);
// 					fn_mvPage('/pw-register');
// 					return;
// 				}
// 				else {
// 					fn_mvPage("/main");	//메인페이지로 이동
// 					return;
// 				}
			}
			//마케팅 수신일 2년 초과	//todo 다음에하기, 수신동의 설정 내정보 수정화면 개발후연결
			else if (revStr == "marketRcv") {
				var options        = {};
				options.msg        = '마케팅 수신 동의일로부터 2년이 경과되어, 수신에 대한 재동의 안내를 시행하고 있습니다. \n메가박스의 다양한 소식 및 이벤트를 받고 싶으시면 수신동의 재설정이 필요합니다.  \n수신동의 재설정을 진행 하시겠습니까?\n\n[수신동의 정보]\n'+marketRcvStr+'';
				//options.msg        = '마케팅 수신 동의일로부터 2년이 경과되어, 수신에 대한 재동의 안내를 시행하고 있습니다. \n메가박스의 다양한 소식 및 이벤트를 받고 싶으시면 수신동의 재설정이 필요합니다.  \n수신동의 재설정을 진행 하시겠습니까?\n\n[수신동의 정보]\n&#39;+lstSmsRcvAgreeDt+&#39;'.replaceAll('\n','<br/>');
				options.confirmFn  = fn_mvPage;
				options.cancelFn   = fn_loginSuccessEvent;
				options.okBtnTxt     = "수신동의 설정";
			    options.cancelBtnTxt = "다음에 하기";
				options.param      = {confirm:"/on/oh/ohh/Mypage/userAdditInfoPage.do?marketRcvReAgree=Y"};
				options.minWidth  = 400;
				options.minHeight = 300;
				gfn_confirmMsgBox(options);
				return;
			}
			//관리자에의한 패스워드 초기화 //비밀번호 재설정 M-ME-FI-04	관리자에 의한 패스워드 초기화는 없다.
// 			else if (revStr == "loginPwdReset") {
// // 				mbLayer.toggle({id:revStr, msg:'비밀번호 재설정이 완료되었습니다. 다시 로그인해 주시기 바랍니다.', btn:'확인', callback:fn_mvPage, param:'/pw-register', minHeight:200, type:'single' });
// 				var options = {};
// 				options.msg = '비밀번호 재설정이 완료되었습니다. 다시 로그인해 주시기 바랍니다.';
// 				options.callback  = fn_mvPage;
// 				options.param = {confirm:'/pw-register'};
// 				options.minWidth  = 400;
// 				options.minHeight = 250;
// 				gfn_alertMsgBox(options);
// 				return;
// 			}
			//휴면계정복구 안내	//TODO 다음에하기, 휴면계정복구 본인인증 수단 선택 M-ME-DA-01
			else if (revStr == "mbSchIdGuideDormAcct") {
				$('#loginForm input[name=certType]').attr('value','SCRC03');
				$('#loginForm input[name=redisKey]').attr('value',redisKey);
				var options = {};
				options.msg        = '회원님의 아이디는 ['+loginIdStar+'] 메가박스 온라인 서비스를 1년이상 이용하지 않아 휴면계정으로 전환되었습니다. 휴면계정 복구 후 서비스 이용이 가능합니다.\n휴면계정 복구를 진행하시겠습니까?';
				options.okBtnTxt = "휴면계정복구";
				options.callback = fn_mvPage;
				options.param    = {confirm:"/member-check"};
				options.minWidth  = 400;
				options.minHeight = 300;
				gfn_alertMsgBox(options);
				return;
			}
			//탈퇴회원안내
			else if (revStr == "quitMb") {
				gfn_alertMsgBoxSize('회원탈퇴 후 1개월 이내 재가입할 수 없습니다.\n메가박스 고객센터로 문의해 주세요',400,250);	//회원탈퇴 후 1개월 이내 재가입할 수 없습니다. 메가박스 고객센터로 문의해 주세요
				return;
			}
			//loginPwdFail 패스워드실패안내, mbJoinReq 회원가입안내, mbInfoSearchUnable 탈퇴회원안내
			else if (revStr == "loginPwdFail" || revStr == "mbJoinReq" || revStr == "mbInfoSearchUnable") {
// 				$('.alert').text('로그인 정보가 잘못되었습니다. (로그인 '+pwdErrCnt+'/5회 실패)');	2020-02-06 메가박스 차세대 이행/안정화 결함대장 28번
				$("#ibxLoginId").val("");
				$("#ibxLoginPwd").val("");
				gfn_alertMsgBoxSize('아이디 또는 비밀번호가 맞지 않습니다.\n로그인 정보를 다시 확인바랍니다.',400,250);	//msg.ch.ohg.ME031=아이디 또는 비밀번호가 맞지 않습니다.\\n로그인 정보를 다시 확인바랍니다.
				$("#btnLogin").attr("disabled", true);	//버튼비활성화
				sValidateLoginPwdAt ='N';
				return;
			}

		    if(typeof loginPopupCallScn === "undefined"){
		    	loginPopupCallScn = "";
		    }
// 		    console.log("this : "+loginPopupCallScn);
			//화면이동

			// 로그인시도 시 메가박스 쿠키싱크 전달
			fn_adSetCookie(data.adMap);
			if(menuId != "" && menuId != null){  //화면으로 띄웠을떄
				fn_mvPage(mappingId);
				return;
			}
			else {

				fn_loginSuccessEvent();

			}
			return;
		},
		error: function(xhr,status,error){
			 var err = JSON.parse(xhr.responseText);
			 alert(xhr.status);
			 alert(err.message);
		},
		beforeSend: function() {
			submitIng = true;
		},
		complete: function() {
			submitIng = false;
		}
	});

	function fn_loginSuccessEvent(){

		var bokdLoginAt = $('#loginForm input[name=bokdLoginAt]').val();
		var reloadYn = $('#loginForm input[name=reloadYn]').val();
		var validDataRevisnYn = $('#loginForm input[name=validDataRevisnYn]').val();				//데이터 보정 여부

		if(bokdLoginAt == "Y"){
			//예매로그인일경우
			//오입력값을 체크한다.
			$('.before').hide();
			$('.after').show();
			$('.after .notice').show();
			$('#layer_login_select button.btn-modal-close').trigger("click");
			fn_validDataRevisn(JSON.parse($('#loginForm input[name=bokdLoginParam]').val()));
		}
		else {
			if (reloadYn == "N") {

				$('.before').hide();
				$('.after').show();
				$('.after .notice').show();
				$('#layer_login_select button.btn-modal-close').trigger("click");
				if(validDataRevisnYn == "Y"){
					fn_validDataRevisn();
				}
			} else {

				//화면 리로드
				//location.reload();
				//post submit시 브라우저 경고창 관련
				window.document.location.href = window.document.URL;


				////////////////////////////////////////////
				// TODO 빵원쿠폰일 경우에만 처리되도록 수정 //
                ////////////////////////////////////////////
                $(".btn-modal-close").click();
                ////////////////////////////////////////////
                ////////////////////////////////////////////
			}
		}

		if (callback) {
			try {
				callback();
			} catch (e) {
				console.error(e);
			}
		}
	}

	//페이지 이동 submit
	function fn_mvPage(page){
// 		console.log("MbLoginScriptDV.fn_mvPage : "+page);

		var rtnParam = $("#loginForm [name=rtnParam]").val();

		if (rtnParam.trim() != ""){

			var arr;
			var html = '<input type="hidden" name="#1" value="#2" />';

			$.each(rtnParam.split(','), function(i, val){

				arr = val.split(':');
				arr[0] = arr[0].trim();
				arr[1] = arr[1].trim();
				arr[2] = '[name='+arr[0]+']';

				if ($("#loginForm").find(arr[2]).length > 0) {
					$("#loginForm").find(arr[2]).val(arr[1]);
				} else {
					$("#loginForm").append(html.replace('#1', arr[0]).replace('#2', arr[1]));
				}
			});
		}

		$("#loginForm").attr("method","post");
		$("#loginForm").attr("action",page);
		$("#loginForm input[name=preUrl]").val(document.location.pathname)
		$("#loginForm").submit();
	}
}
/* 비회원 */
var sValidateNonMbNmAt               = "N";
var sValidateNonMbByymmddAt          = "N";
var sValidateNonMbTelnoAt            = "N";

var sValidateMblpCharCertNo          = "N";

var sValidateNonMbPwdAt              = "N";
var sValidateNonMbPwdConfirmAt       = "N";
var sValidateNonMbPwdEqualAt         = "N";
var sValidateNonMbBokdPersonInfoProc = "N";
var sValidateMblpCertNoSuccess      = "N";

var AuthTimer;
var bokdCnfmAt                       = "N";

//이벤트
$(function(){
	if(typeof $("#ibxNonMbPwdConfirm").val() == 'undefined'){
		bokdCnfmAt = "Y";
	}
	fn_validateNonMbInputVal();
	/*비회원 로그인 버튼 비활성화*/
	$("#btnMbLogin").attr("disabled", true);

	/*비회원 정보 확인 버튼 비활성화*/
	$("#btnChkNonMbLogin").attr("disabled", true);
	$("#btnNonMbLogin").attr("disabled", true);

	/* 이름 숫자를 제외한 입력 여부판단 */
	$("#ibxNonMbNm").on("keyup", function(e){
		var partton = /[^ㄱ-힣a-zA-Z]/g;
		if(partton.test($(this).val())) {
			var value = $(this).val().replace(/[^ㄱ-힣a-zA-Z]/g,"");
			$(this).val(value);
		}
		if(fn_validateNonMbInputVal()){
			if(e.keyCode == 13) {$("#btnChkNonMbLogin").click();}
		} else {
			if(e.keyCode == 13) {$("#ibxNonMbByymmdd").focus()};
		}
	});
	$("#ibxNonMbNm").focusout(function(){
		var partton = /[^ㄱ-힣a-zA-Z]/g;
		if(partton.test($(this).val())) {
			var value = $(this).val().replace(/[^ㄱ-힣a-zA-Z]/g,"");
			$(this).val(value);
		}
		fn_validateNonMbInputVal();
	});

	/* 생년월일 숫자만 입력 여부판단 */
	$("#ibxNonMbByymmdd").on("keyup", function(e){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		if(fn_validateNonMbInputVal()){
			if(e.keyCode == 13) {$("#btnChkNonMbLogin").click();}
		} else {
			if(e.keyCode == 13) {$("#ibxNonMbTelno").focus();}
		}
	});
	$("#ibxNonMbByymmdd").focusout(function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		fn_validateNonMbInputVal();
	});

	/* 휴대폰번호 숫자만 입력 여부판단 */
	$("#ibxNonMbTelno").on("keyup", function(e){
		$(this).val($(this).val().replace(/[^0-9]/g,""));

		//휴대폰 번호
		if($("#ibxNonMbTelno").val() != "") {
			var frontNm = $("#ibxNonMbTelno").val().substr(0,2);
			if(frontNm != '01'){
				$('#mblpInput-error-text').text('휴대폰번호를 정확히 입력해주세요.');
				ibxNonMbTelno = 'N';
				return false;
			}
			else if($("#ibxNonMbTelno").val().length < 10){
				$('#mblpInput-error-text').text('휴대폰번호를 정확히 입력해주세요.');
				sValidateNonMbTelnoAt = 'N';
				return false;
			}
			else {
				sValidateNonMbTelnoAt = 'Y';
				$('#mblpInput-error-text').text('');
			}
		}
		else {
			sValidateNonMbTelnoAt = 'N';
		}

		//console.log("sValidateNonMbTelnoAt", sValidateNonMbTelnoAt);
		//console.log("sValidateMblpCertNoSuccess", sValidateMblpCertNoSuccess);

		//인증번호 전송 버튼 활성화
		if( sValidateNonMbTelnoAt   == 'Y' && sValidateMblpCertNoSuccess == 'N') {
			$("#nonMbCertNoSend").attr("disabled", false);
			$("#nonMbCertNoSend").removeClass("disabled");
			if(window.fn_validateJoinInfoRegInputVal) {
				//sValidateMblpCertNoSuccess = "Y";
				fn_validateJoinInfoRegInputVal();
			}
		}
		else{
			$("#nonMbCertNoSend").attr("disabled", true);
			$("#nonMbCertNoSend").addClass("disabled");
			if(window.fn_validateJoinInfoRegInputVal) {
				//sValidateMblpCertNoSuccess = "N";
				fn_validateJoinInfoRegInputVal();
			}
		}

		if(e.keyCode != 9){
			if(typeof AuthTimer != 'undefined'){
				AuthTimer.fnStop();
				$('#timer').html("3:00");
				$('#nonMbCertNoSend').html("인증요청");
				sValidateMblpCertNoSuccess = "N";
				$('#nonMbCertRow').show();
				$('#mblpCharCertNo').val("");
				$("#nonMbCertNoSend").removeClass("disabled");
				$("#nonMbCertNoSend").attr("disabled", false);
				$("#btnMblpCharCert").attr("disabled", true);
				$("#btnMblpCharCert").addClass("disabled");
				if(fn_validateNonMbInputVal()){
					if(e.keyCode == 13) {$("#btnChkNonMbLogin").click();}
				} else {
					if(e.keyCode == 13) {$("#nonMbCertNoSend").click();}
				}
			}
			else {
				if(fn_validateNonMbInputVal()){
					if(e.keyCode == 13) {$("#btnChkNonMbLogin").click();}
				} else {
					if(e.keyCode == 13) {$("#ibxNonMbPwd").focus();}
				}
			}
		}
	});
	$("#ibxNonMbTelno").focusout(function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		fn_validateNonMbInputVal();
	});

	/* 인증번호 숫자만 입력 여부 판단*/
	$("#mblpCharCertNo").on("keyup", function(e){
		$(this).val($(this).val().replace(/[^0-9]/g,""));

		if($("#mblpCharCertNo").val().length >= 4) {
			$("#btnMblpCharCert").removeClass("disabled");
			$("#btnMblpCharCert").attr("disabled", false);
		}
		else {
			$("#btnMblpCharCert").attr("disabled", true);
			$("#btnMblpCharCert").addClass("disabled");
		}

		if(e.keyCode == 13) {$("#btnMblpCharCert").click();}
	});
	$("#mblpCharCertNo").focusout(function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		if($("#mblpCharCertNo").val().length >= 4) {
			$("#btnMblpCharCert").removeClass("disabled");
			$("#btnMblpCharCert").attr("disabled", false);
		}
		else {
			$("#btnMblpCharCert").attr("disabled", true);
			$("#btnMblpCharCert").addClass("disabled");
		}
	});

	/* 비밀번호 숫자만 입력 여부판단 */
	$("#ibxNonMbPwd").on("keyup", function(e){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		if(fn_validateNonMbInputVal()){
			if(e.keyCode == 13) {$("#btnChkNonMbLogin").click();}
		} else {
			if(e.keyCode == 13) {$("#ibxNonMbPwdConfirm").focus();}
		}
	});
	$("#ibxNonMbPwd").focusout(function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		fn_validateNonMbInputVal();
	});

	/* 비밀번호 확인 숫자만 입력 여부판단 */
	$("#ibxNonMbPwdConfirm").on("keyup", function(e){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		if(fn_validateNonMbInputVal()) {
			if(e.keyCode == 13) {$("#btnChkNonMbLogin").click();}
		}
	});
	$("#ibxNonMbPwdConfirm").focusout(function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		fn_validateNonMbInputVal();
	});

	//체크박스 변경여부
	$("#chkNonMbBokdPersonInfoProcTrue").change(function() {
		if($('#chkNonMbBokdPersonInfoProcTrue').is(":checked")) {
			fn_validateNonMbInputVal();
		}
		else {
			fn_validateNonMbInputVal();
		}
	});

	$("#chkNonMbBokdPersonInfoProcFalse").change(function() {
		if($('#chkNonMbBokdPersonInfoProcFalse').is(":checked")) {
			fn_validateNonMbInputVal();
		}
		else {
			fn_validateNonMbInputVal();
		}
	});

	/*이벤트*/
	/* 인증번호 전송 버튼 클릭*/
	$("#nonMbCertNoSend").click(function(){
		if($("#nonMbCertNoSend").hasClass("disabled")){
			return;
		}

		var sRedisKey     = $('#loginForm input[name=nonMbCertRedisKey]').val();
		var sNonMbTelno   = $('#ibxNonMbTelno').val();
		var paramData = { redisKey : sRedisKey
						, nonMbTelno : sNonMbTelno
						};

		$('#nonMbCert-error-text').text('');

		$.ajaxMegaBox({
			url: "/on/oh/ohg/MbLogin/selectNonMbCertNoSend.rest",
			type: "POST",
			contentType: "application/json;charset=UTF-8",
			dataType: "json",
			data: JSON.stringify(paramData),
			success: function (data, textStatus, jqXHR) {
				$('input[name=nonMbCertRedisKey]').attr('value',data.resultMap.redisKey);

				if(data.resultMap.successAt == "N"){
					//비회원로그인-예매
					var bokdLoginAt = $('#loginForm input[name=bokdLoginAt]').val();
    				if(bokdLoginAt == "Y"){
    					//예매로그인일경우
    					//인증시간이 만료된 경우
    					if(data.resultMap.msg == "ME061"){
    						gfn_alertMsgBoxSize('인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.', 400, 250);	//인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.
    					}
    					//동일번호로 3회 이상 요청하는경우
    					else if(data.resultMap.msg == "ME062"){
    						//오입력값을 체크한다.
        					$('.before').hide();
            				$('.after').show();
            				$('#btnNonMbModalClose').trigger("click");
        					$('#layer_login_select button.btn-modal-close').trigger("click");
    						gfn_alertMsgBoxSize('동일번호로 연속적인 인증이 발생하여 창을 닫습니다.\n3분후 다시 시도해 주세요.', 400, 250);	//동일번호로 연속적인 인증이 발생하여 창을 닫습니다.\\n번호를 확인 한 후 처음부터 다시 진행바랍니다.
    					}

    				}
    				else {
    					//회원가입
    					var options = {};
						options.msg = '동일번호로 연속적인 인증이 발생하여 창을 닫습니다.\n3분후 다시 시도해 주세요.';	//동일번호로 연속적인 인증이 발생하여 창을 닫습니다.\\n처음부터 다시 이용바랍니다.
						options.callback  = fn_mvMainPage;
						options.minWidth  = 400;
						options.minHeight = 250;
						gfn_alertMsgBox(options);
    				}
					return;
				}
				else {
					//nonMbCertRedisKey
					//console.log("certNo", data.resultMap.certNo);
					$('#nonMbCertNoSend').html("재전송");
					$('#loginForm input[name=nonMbCertedMblpNo]').attr('value',sNonMbTelno);
					gfn_alertMsgBoxSize('인증번호를 전송했습니다.\n인증번호가 도착하지 않았을 경우 재전송을 눌러 주세요.', 400, 250);

					if(typeof AuthTimer != 'undefined'){
						AuthTimer.fnStop();
						$('#timer').html("3:00");
					}
					else {
						AuthTimer = new $ComTimer();
					}
					AuthTimer.comSecond = 180;
					AuthTimer.fnCallback = function(){alert("다시인증을 시도해주세요.")}
					AuthTimer.timer = setInterval(function(){AuthTimer.fnTimer()},1000);
					AuthTimer.domId = document.getElementById("timer");
					//입력하신 휴대폰 번호로 인증번호가 발송되었습니다. 확인 후 인증번호를 입력해주세요!
				}
			},
			error: function(xhr,status,error){
				var err = JSON.parse(xhr.responseText);
				alert(xhr.status);
				alert(err.message);
			}
		});
	});


	//인증번호 확인 버튼 클릭
	$("#btnMblpCharCert").click(function(){
		if($("#btnMblpCharCert").hasClass("disabled")){
			return;
		}

		var sRedisKey     = $('#loginForm input[name=nonMbCertRedisKey]').val();
		var sMblpCharCertNo = $('#mblpCharCertNo').val();
		var sNonMbTelno     = $('#ibxNonMbTelno').val();
		var paramData = { redisKey : sRedisKey
						, certNo : sMblpCharCertNo
						, nonMbTelno : sNonMbTelno
						};

		$.ajaxMegaBox({
			url: "/on/oh/ohg/MbLogin/selectNonMbCertNoCnfn.rest",
			type: "POST",
			contentType: "application/json;charset=UTF-8",
			dataType: "json",
			data: JSON.stringify(paramData),
			success: function (data, textStatus, jqXHR) {
				var successAt = data.resultMap.successAt;
				var msg = data.resultMap.msg;
				var redisKey = data.resultMap.redisKey;

				if(successAt == "Y"){
					sValidateMblpCertNoSuccess = "Y";
					fn_validateNonMbInputVal();
					$('#loginForm input[name=nonMbCertRedisKey]').attr('value',data.resultMap.redisKey);
					$('#nonMbCert-error-text').text('');
					$("#nonMbCertNoSend").attr("disabled", true);
					$("#nonMbCertNoSend").addClass("disabled");
					$("#nonMbCertRow").hide();
					gfn_alertMsgBoxSize('휴대폰 인증을 완료했습니다.\n확인 버튼을 눌러주세요.', 400, 250);	//휴대폰 인증을 완료했습니다.
					if(typeof fn_validateJoinInfoRegInputVal != "undefined"){
						fn_validateJoinInfoRegInputVal()	//회원가입에서 검증함수 호출
					}
				}
				else {
					sValidateMblpCertNoSuccess = "N";
					if(msg == "ME019"){
						$('#nonMbCert-error-text').text('인증번호가 일치하지 않습니다.\n인증번호를 다시 입력해주세요.');	//msg.ch.ohg.ME019 인증번호를 다시 확인 후 입력해 주세요.
					}
					else if(msg == "ME040"){
						$('#nonMbCert-error-text').text('인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.');	//msg.ch.ohg.ME040	유효시간이 지났습니다.  인증번호 재전송을 통해서 다시 인증해주세요.
					}
					else if(msg == "ME061"){
						$('#nonMbCert-error-text').text('인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.');	//msg.ch.ohg.ME061	유효시간이 지났습니다.  인증번호 재전송을 통해서 다시 인증해주세요.
						gfn_alertMsgBoxSize('인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.',400,250);	//입력정보를 확인해주세요.
					}

					$("#nonMbCertNoSend").removeClass("disabled");
					$("#nonMbCertNoSend").attr("disabled", false);
					$("#nonMbCertRow").show();
				}
			},
			error: function(xhr,status,error){
				var err = JSON.parse(xhr.responseText);
				alert(xhr.status);
				alert(err.message);
			}
		});
	});

	// 비회원 정보 확인 팝업 요청
	$("#btnChkNonMbLogin").click(function(){

		if(submitIng) return;

		if(typeof $("#ibxNonMbPwdConfirm").val() != 'undefined'){
			if($("#ibxNonMbPwd").val() != $("#ibxNonMbPwdConfirm").val()) {
				gfn_alertMsgBoxSize('입력정보를 확인해주세요.',400,250);	//입력정보를 확인해주세요.
				return;
			}
		}

		//생년월일 날짜형태 확인
// 		if(!fn_validateDateYn($("#ibxNonMbByymmdd").val())) {
// 			alert("생년월일 입력이 잘못 되었습니다.");
// 			$("#ibxNonMbByymmdd").focus();
// 			return;
// 		}
		$("#btnNonMbLogin").attr("disabled", false);
		fn_chkNonMbLogin();
	});

	// 비회원 로그인
	$("#btnNonMbLogin").click(function(){

		var paramData = { nonMbNm:$("#ibxNonMbNm").val()
						, nonMbByymmdd:$("#ibxNonMbByymmdd").val()
						, nonMbTelno:$("#ibxNonMbTelno").val()
						, nonMbPwd:$("#ibxNonMbPwd").val()
						, bokdCnfmAt:bokdCnfmAt
						};

		$.ajaxMegaBox({
			url: "/on/oh/ohg/NonMbLogin/selectNonMbLoginInfo.rest",
			type: "POST",
			contentType: "application/json;charset=UTF-8",
			dataType: "json",
			data: JSON.stringify(paramData),
			success: function (data, textStatus, jqXHR) {

				var menuId                 = data.menuId;
	            var mappingId              = data.mappingId;
	            var statCd                 = data.result.statCd;


	            if(typeof loginPopupCallScn === "undefined"){
			    	loginPopupCallScn = "";
			    }
	            //화면이동
	            if(menuId != "" && menuId != null){    //화면으로 띄웠을떄
	                fn_mvPage(mappingId);
	                return;
	            }
	            else {
	                if(loginPopupCallScn != "" && loginPopupCallScn != null){  //팝업으로 띄었을때 파라메타는 팝업 호출화면에 전역으로 정의
	                    $(".btn-layer-close").trigger("click");
	                    if(loginPopupCallScn == "SimpleBokdM"){
	                    	$('.before').hide();
	            			$('.after').show();
	                        alert("콜백함수호출");
	                    } else if(loginPopupCallScn == "StoreDtlV"){
	                    	$('.before').hide();
	            			$('.after').show();
	                    } else if(loginPopupCallScn == "MySbscDtlsL"){
	                    	$('.before').hide();
	            			$('.after').show();
	            			location.href = '/on/oh/ohh/MySbscDtls/mySbscDtlsListPage.do?currPage=1&searchText=';
	                    }
	                }
	                else {
	                	var bokdLoginAt = $('#loginForm input[name=bokdLoginAt]').val();
	    				if(bokdLoginAt == "Y"){
	    					//예매로그인일경우
	    					//오입력값을 체크한다.
	    					$('.before').hide();
	        				$('.after').show();
	        				$('#btnNonMbModalClose').trigger("click");
	    					$('#layer_login_select button.btn-modal-close').trigger("click");
	    					fn_validDataRevisn(JSON.parse($('#loginForm input[name=bokdLoginParam]').val()));
	    					return;
	    				}

	                	if(bokdCnfmAt == "Y"){
	                		$('#nonMbBokdCnfmForm input[name=nonMbNm]').attr('value',$('#ibxNonMbNm').val());
	                		$('#nonMbBokdCnfmForm input[name=nonMbTelno]').attr('value',$('#ibxNonMbTelno').val());
	                		$('#nonMbBokdCnfmForm input[name=nonMbPwd]').attr('value',$('#ibxNonMbPwd').val());
	                		$('#nonMbBokdCnfmForm input[name=nonMbByymmdd]').attr('value',$('#ibxNonMbByymmdd').val());

                            /////////////////////////////////////////////////////////////////////
	                		// 예매정보가 없을 시 메세지 팝업처리 /////////////////////////////////
                            /////////////////////////////////////////////////////////////////////
                            if(statCd == 0) {
                                fn_mvNonMbBokdCnfm("/non-member"); //비회원 예매 확인일때
                            }else{
                                alert("입력하신 정보와 일치하는 예매내역이 없습니다.");
                            }
                            /////////////////////////////////////////////////////////////////////
                            /////////////////////////////////////////////////////////////////////

	                		//fn_mvNonMbBokdCnfm("/non-member"); //비회원 예매 확인일때
	                	}
	                	else {
	                		location.reload();
	                	}

	                }
	            }
	            return;
			},
			error: function(xhr,status,error){
				 var err = JSON.parse(xhr.responseText);
				 alert(xhr.status);
				 alert(err.message);
			},
			beforeSend: function() {
	            submitIng = true;
	        },
	        complete: function() {
	            submitIng = false;
	        }
	    });

	    //페이지 이동 submit
	    function fn_mvNonMbBokdCnfm(page){
// 	        console.log("fn_mvNonMbBokdCnfm : "+page);
	        $("#nonMbBokdCnfmForm").attr("method","post");
	        $("#nonMbBokdCnfmForm").attr("action",page);
	        $("#nonMbBokdCnfmForm").submit();
	    }

	  	//비회원 예매 확인 페이지 이동 submit
	    function fn_mvPage(page){
// 	        console.log("MbLoginScriptDV.fn_mvPage : "+page);
	        $("#loginForm").attr("method","post");
	        $("#loginForm").attr("action",page);
	        $("#loginForm").submit();
	    }
	});
});

function fn_adTracking(url){
	$.ajax({
        type: "get"
        , url: url
        , data: ""
        , dataType: "json"
        , success: function(result) {

        }
        , error: function(err) {
            console.log('fn_adEventCall error : ' + err.status);
        }
    });
}

var callback = undefined;

/*호출 화면에 따른 분기처리*/
function fn_viewLoginPopup(viewId,deviceType,bokdLoginAt,bokdLoginParam,reloadYn,callbackFn){

  	//로그인 폼 호출시 광고영역 노출
    if( $("#Rw6jtk0hQTuOBSzFbvGGlw").html() == "" ){

    	$("#Rw6jtk0hQTuOBSzFbvGGlw").append('<a href="" target="_blank"><img id="pageBannerRnbImage" src="/static/pc/images/common/bg/bg-noimage-main.png" /></a>');

    	var header ={"typ": "JWT","alg": "HS256"}
        var data = {
            "device": {"devicetype": 2},
            "imp": [{"native": {"ext" : {"slots" : 1}}}],
            "site": {"name": "megabox"},
            "id": ""
        };
    	var secret = "Rw6jtk0hQTuOBSzFbvGGlw";

    	var stringifiedHeader = CryptoJS.enc.Utf8.parse(JSON.stringify(header));
        var encodedHeader = base64url(stringifiedHeader);
        var stringifiedData = CryptoJS.enc.Utf8.parse(JSON.stringify(data));
        var encodedData = base64url(stringifiedData);
        var signature = encodedHeader + "." + encodedData;
        signature = CryptoJS.HmacSHA256(signature, secret);
        signature = base64url(signature);
        var pram = encodedHeader+"."+encodedData+"."+signature;
        var adUrl = "https://cast.imp.joins.com/bid/"+secret+"/"+pram; //상용

    	$.ajax({
            type: "get"
            , url: adUrl
            , data: ""
            , success: function(result) {
                if(result) {
                    $("#pageBannerRnbImage").attr("src", result.image_file);
                    $("#pageBannerRnbImage").attr("alt", result.alternative_text);
                    $("#pageBannerRnbImage").attr("clickThrough", result.click_tracking);
                    $("#pageBannerRnbImage").parent().attr("href", result.click_through);



                    $("#pageBannerRnbImage").css("height", result.height);
                    $("#Rw6jtk0hQTuOBSzFbvGGlw").css("background-color", result.bgcolor);
                    fn_adTracking(result.impression_tracking);
                }
            }
            , error: function(err) {
                console.log('fn_getBannerAd error : ' + err.status);
            }
        });

    	//광고링크
   	    $("#pageBannerRnbImage").on("click", function() {
   	        var clickThrough = $(this).attr("clickThrough");
   	        if(clickThrough != undefined && clickThrough != '') {
   	        	fn_adTracking(clickThrough);
   	        }
   	    });
    }

	//
	$(".alert").html("");
	if(sCookieVal == ""){	//아이디 저장 체크 안했을경우
		$(".login-input-area #ibxLoginId").val("");			//아이디
	}
	$(".login-input-area #ibxLoginPwd").val("");		//비밀번호
	$(".no-member-login-table #ibxNonMbNm").val("");	//비회원 이름
	$(".no-member-login-table #ibxNonMbByymmdd").val("");	//비회원 생년월일
	$(".no-member-login-table #ibxNonMbTelno").val("");		//비회원 휴대폰 번호
	$(".no-member-login-table #mblpCharCertNo").val("");	//비회원 휴대폰인증번호
	$(".no-member-login-table #ibxNonMbPwd").val("");		//비회원 비밀번호
	$(".no-member-login-table #ibxNonMbPwdConfirm").val("");	//비회원 비밀번호확인
	$("input[name=chkNonMbBokdPersonInfoProc]").prop("checked",false);	//비회원 라디오버튼 해제
	if(typeof AuthTimer != 'undefined'){
	    AuthTimer.fnStop();
	    $('#timer').html("3:00");
	    $('#nonMbCertNoSend').html("인증요청");
	    sValidateMblpCertNoSuccess = "N";
	    $('#nonMbCertRow').show();
	    $('#mblpCharCertNo').val("");
	    $("#nonMbCertNoSend").removeClass("disabled");
	    $("#nonMbCertNoSend").attr("disabled", false);
	}
	fn_validateNonMbInputVal();

	$('#loginForm input[name=bokdLoginAt]').val("");				//예매 로그인 여부
	$('#loginForm input[name=bokdLoginParam]').val("");				//예매 로그인 파라메타
	$('#loginForm input[name=validDataRevisnYn]').val("");				//데이터 보정 여부
	fn_validateInputVal();

	if('pc' == deviceType){

		if('SimpleBokdM' == viewId) {
			var sBokdLoginAt = typeof bokdLoginAt == 'undefined' ? "" : bokdLoginAt;//예매 로그인 여부
			$('#layer_login_select .layer-con .tab-list').show();			//로그인 비회원로그인 선택창
			$('#layer_login_select .layer-con .tab-cont-wrap .login-member').removeClass('pt00');	//레이어 사이즈 줄임
			$("#loginPupupATag").attr("h-data",'556');	//높이값 변경
			$("#loginPupupATag").trigger("click");	//레이어띄움
			$('#loginForm input[name=bokdLoginAt]').attr('value',sBokdLoginAt);			//예매 로그인 여부 값 설정
			$('#loginForm input[name=bokdLoginParam]').attr('value',bokdLoginParam);	//예매 로그인 파라메타
			if(bokdLoginAt == "Y"){
				$('#loginForm input[name=nonMbCertRedisKey]').val("");
				$('#loginForm input[name=nonMbCertedMblpNo]').val("");
			}

		}
		else if('StoreDtlV' == viewId || 'MySbscDtlsL' == viewId) {
			$("#loginPupupATag").trigger("click");	//레이어띄움
			$("#mbPopLayer").show();		//회원 레이어
			$("#nonMbLogoLayer").hide();	//비회원 로고
			$("#nonMbPopLayer").hide();		//비회원 레이어
			$("#mbMbChoiLayer").hide();	//회원 비회원 선택

			$("#nonMbBokdCnfm").attr("style","display:none");
		}
		else if('BoutiqPrivateL' == viewId){	//부티크
			$('#layer_login_select .layer-con .tab-list li:eq(0) a').trigger("click");	//회원로그인만 클릭되도록
			$('#layer_login_select .layer-con .tab-list').hide();						//로그인 비회원로그인 선택창
			$('#layer_login_select .layer-con .tab-cont-wrap .login-member').addClass('pt00');	//레이어 사이즈 줄임
			$("#loginPupupATag").attr("h-data",'484');	//높이값 변경
			$("#loginPupupATag").trigger("click");	//레이어띄움

			$('#loginForm input[name=reloadYn]').attr('value',reloadYn); // 화면 리로드 설정
			$('#loginForm input[name=validDataRevisnYn]').val("Y");				//데이터 보정 여callbackFn부
		}
		else {
			var sReloadYn = typeof reloadYn == 'undefined' ? "" : reloadYn;// 화면 리로드 여부
			$('#layer_login_select .layer-con .tab-list li:eq(0) a').trigger("click");	//회원로그인만 클릭되도록
			$('#layer_login_select .layer-con .tab-list').hide();						//로그인 비회원로그인 선택창
			$('#layer_login_select .layer-con .tab-cont-wrap .login-member').addClass('pt00');	//레이어 사이즈 줄임
			$("#loginPupupATag").attr("h-data",'484');	//높이값 변경
			$("#loginPupupATag").trigger("click");	//레이어띄움

			$('#loginForm input[name=reloadYn]').attr('value',sReloadYn); // 화면 리로드 설정
		}

		callback = callbackFn;
	}
}

//입력 문자 체크
function fn_validateNonMbInputVal(){
	//이름
	if($("#ibxNonMbNm").val() != "") {
		sValidateNonMbNmAt = 'Y';
	}
	else {
		sValidateNonMbNmAt = 'N';
	}

	//생년월일
	if($("#ibxNonMbByymmdd").val() != "") {
		if(fn_validateDateYn($("#ibxNonMbByymmdd").val(),6)){
			sValidateNonMbByymmddAt = 'Y';
			//비회원예매확인
			if(bokdCnfmAt == "Y"){
				$('#ErrTextNonMbByymmdd').text('');
			}
			//비회원로그인
			else {
				$('#mblpInput-error-text').text('');
			}
		}
		else {
			sValidateNonMbByymmddAt = 'N';
			//비회원예매확인
			if(bokdCnfmAt == "Y"){
				$('#ErrTextNonMbByymmdd').text('생년월일을 정확히 입력해주세요.');
			}
			//비회원로그인
			else {
				$('#mblpInput-error-text').text('생년월일을 정확히 입력해주세요.');
			}
			return false;
		}
	}
	else {
		sValidateNonMbByymmddAt = 'N';
		$('#mblpInput-error-text').text('');
	}

	//휴대폰 번호
	if($("#ibxNonMbTelno").val() != "") {
		var frontNm = $("#ibxNonMbTelno").val().substr(0,2);
		if(frontNm != '01'){
			$('#mblpInput-error-text').text('휴대폰번호를 정확히 입력해주세요.');
			ibxNonMbTelno = 'N';
			return false;
		}
		else if($("#ibxNonMbTelno").val().length < 10){
			$('#mblpInput-error-text').text('휴대폰번호를 정확히 입력해주세요.');
			sValidateNonMbTelnoAt = 'N';
			return false;
		}
		else {
			sValidateNonMbTelnoAt = 'Y';
			$('#mblpInput-error-text').text('');
		}
	}
	else {
		sValidateNonMbTelnoAt = 'N';
	}


	if($("#ibxNonMbPwd").val().length == 4) {
		sValidateNonMbPwdAt = 'Y';
	}
	else {
		sValidateNonMbPwdAt = 'N';
	}
	if(bokdCnfmAt == "Y"){
		sValidateNonMbPwdConfirmAt       = 'Y';
		sValidateNonMbPwdEqualAt         = 'Y';
		sValidateNonMbBokdPersonInfoProc = 'Y';
		sValidateMblpCertNoSuccess       = 'Y';
	}
	else{
		if($("#ibxNonMbPwdConfirm").val().length == 4) {
			sValidateNonMbPwdConfirmAt = 'Y';
		}
		else {
			sValidateNonMbPwdConfirmAt = 'N';
		}

		if($("#ibxNonMbPwd").val().length > 0 && $("#ibxNonMbPwdConfirm").val().length > 0 && $("#ibxNonMbPwd").val() == $("#ibxNonMbPwdConfirm").val()) {
			sValidateNonMbPwdEqualAt = 'Y';
			$('#nonMbPwdErrText').text('');
		}
		else if($("#ibxNonMbPwd").val().length > 0 && $("#ibxNonMbPwdConfirm").val().length > 0 && $("#ibxNonMbPwd").val() != $("#ibxNonMbPwdConfirm").val()){
			sValidateNonMbPwdEqualAt = 'N';
			$('#nonMbPwdErrText').text('비밀번호와 비밀번호 확인의 입력값이 일치하지 않습니다.');
			return false;
		}

		if($('#chkNonMbBokdPersonInfoProcTrue').prop("checked")){
			sValidateNonMbBokdPersonInfoProc = 'Y';
		}
		else {
			sValidateNonMbBokdPersonInfoProc = 'N';
		}

		if($('#chkNonMbBokdPersonInfoProcFalse').prop("checked")){
			sValidateNonMbBokdPersonInfoProc = 'N';
		}
	}

// 	$('#error-text1').text
// 	("sValidateNonMbNmAt:"             +sValidateNonMbNmAt              +("/")+$("#ibxNonMbNm").val().length        +("\n\n")+
// 			"sValidateNonMbByymmddAt:"         +sValidateNonMbByymmddAt         +("/")+$("#ibxNonMbByymmdd").val().length   +("\n\n")+
// 			"sValidateNonMbTelnoAt:"           +sValidateNonMbTelnoAt           +("/")+$("#ibxNonMbTelno").val().length     +("\n\n")+
// 			"sValidateNonMbPwdAt:"             +sValidateNonMbPwdAt             +("/")+$("#ibxNonMbPwd").val().length       +("\n\n")+
// 			"sValidateNonMbPwdConfirmAt:"      +sValidateNonMbPwdConfirmAt      +("/")+$("#ibxNonMbPwdConfirm").val().length+("\n\n")+
// 			"sValidateNonMbPwdEqualAt:"        +sValidateNonMbPwdEqualAt        +("/\n\n")+
// 			"sValidateNonMbBokdPersonInfoProc:"+sValidateNonMbBokdPersonInfoProc+("/\n\n")
// 		+$("input:checkbox[id='chkNonMbBokdPersonInfoProc']").is(":checked"));

	if(    bokdCnfmAt                       == "N"
		&& sValidateNonMbNmAt               == 'Y'
		&& sValidateNonMbByymmddAt          == 'Y'
		&& sValidateNonMbTelnoAt            == 'Y'
		&& sValidateNonMbPwdAt              == 'Y'
		&& sValidateNonMbPwdConfirmAt       == 'Y'
		&& sValidateNonMbBokdPersonInfoProc == 'Y'
 		&& sValidateNonMbPwdEqualAt         == 'Y'
 		&& sValidateMblpCertNoSuccess       == 'Y'){
		$("#btnChkNonMbLogin").attr("disabled", false);
		return true;
	}
	else if (bokdCnfmAt == "Y"
			&& sValidateNonMbNmAt       == 'Y'
			&& sValidateNonMbByymmddAt         == 'Y'
			&& sValidateNonMbTelnoAt == 'Y'
			&& sValidateNonMbPwdAt       == 'Y'){
		$("#btnNonMbLogin").attr("disabled", false);
		return true;
	}
	else{
		$("#btnChkNonMbLogin").attr("disabled", true);
		$("#btnNonMbLogin").attr("disabled", true);
		return false;
	}
}

/*날짜 형태 확인*/
function fn_validateDateYn(param, length) {
	try
	{
		var year  = 0;
		var month = 0;
		var day   = 0;

		param = param.replace(/-/g,'');

		// 자리수가 맞지않을때
		if( isNaN(param) || param.length < Number(length) || param.length > Number(length)) {
			return false;
		}

		if( param.length == 6){
			year  = Number(param.substring(0, 2));
			month = Number(param.substring(2, 4));
			day   = Number(param.substring(4, 6));
		}
		else if(param.length == 8){
			year  = Number(param.substring(0, 4));
			month = Number(param.substring(4, 6));
			day   = Number(param.substring(6, 8));

			var sysYear = Number(new Date().getFullYear());
			//년도입력이 현재 년도보다 클때.
			if(sysYear < year){
				return false;
			}
		}
		else {
			return false;
		}


		var dd = day / 0;


		if( month<1 || month>12 ) {
			return false;
		}

		var maxDaysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
		var maxDay = maxDaysInMonth[month-1];

		// 윤년 체크
		if( month==2 && ( year%4==0 && year%100!=0 || year%400==0 ) ) {
			maxDay = 29;
		}

		if( day<=0 || day>maxDay ) {
			return false;
		}
		return true;

	} catch (err) {
		return false;
	}
}


function $ComTimer(){
    //prototype extend
}

$ComTimer.prototype = {
    comSecond : ""
    , fnCallback : function(){}
    , timer : ""
    , domId : ""
    , fnTimer : function(){
        var m = Math.floor(this.comSecond / 60) + ":" + String((this.comSecond % 60)).lpad(2,"0");	// 남은 시간 계산
        this.comSecond--;					// 1초씩 감소
        this.domId.innerText = m;
        if (this.comSecond < 0) {			// 시간이 종료 되었으면..
            clearInterval(this.timer);		// 타이머 해제
            $('#nonMbCert-error-text').text('인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.');	//msg.ch.ohg.ME061	인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.
            $("#btnMblpCharCert").attr("disabled", true);	//인증확인버튼 비활성
			$("#btnMblpCharCert").addClass("disabled");		//인증확인버튼 비활성
        }
    }
    ,fnStop : function(){
        clearInterval(this.timer);
    }
}

</script>
		<script type="text/javascript">
var simpleLoginWithPopup;
var simpleLoginWith = function(lnkgTy){
    var url = "/on/oc/ocz/SimpleLogin/simpleLogin.do?lnkgTy=" + lnkgTy;
    if ( simpleLoginWithPopup ) {
        simpleLoginWithPopup.close();
    }
    if(lnkgTy != "FACEBOOK"){
		simpleLoginWithPopup = window.open(url, 'simpleLoginWithPopup', 'width=420, height=550');
	}
	else {
		simpleLoginWithPopup = window.open(url, 'simpleLoginWithPopup', 'width=650, height=600, scrollbars=yes');
	}
}

var fn_LoginPopUpCall = function(paramData){
    if ( lnkgInfoObj.attr("connTy") != undefined ) {
        fn_ConnWithCallBack(paramData);
    } else {
        fn_LoginWithCallBack(paramData);
    }

}
var fn_LoginPopUpCallError = function(msg){
    gfn_alertMsgBoxSize(msg, 400, 250);
}

//비회원 확인 팝업
function fn_chkNonMbLogin() {

	var $td = $(document).find('#layer_no_member_chk td');

	var telTmp = $('#ibxNonMbTelno').val();

	switch(telTmp.length){
	case 10 : telTmp = telTmp.format('XXX-XXX-XXXX'); break;
	case 11 : telTmp = telTmp.format('XXX-XXXX-XXXX');break;
	}

	$td.eq(0).html($('#ibxNonMbNm').val());
	$td.eq(1).html($('#ibxNonMbByymmdd').val());
	$td.eq(2).html(telTmp);

	// 레이어 호출
	$(document).find('#aNonMbLogin').click();
}
</script>
		<script type="text/javascript">
var fn_LoginWithCallBack = function(paramData){
    $.ajaxMegaBox({
        url: "/on/oc/ocz/SimpleLogin/selectSimpleLogin.do",
        type: "POST",
        contentType: "application/json;charset=UTF-8",
        dataType: "json",
        data: JSON.stringify(paramData),
        success: function (data, textStatus, jqXHR) {
            if ( data.userMap == null ) {
            	//var simpleLoginTyCd = data.userMap.simpleLoginTyCd;
                gfn_alertMsgBoxSize('['+paramData.simpleLoginTyCd+'] 계정으로 연동된 메가박스 계정이 없습니다.\n연동을 원하시면 나의메가박스 > 개인정보수정에서\n간편로그인 계정연동을 진행해 주세요.', 400, 250);
            } else {
                var loginId = data.userMap.loginId;
                var mbNo    = data.userMap.mbNo;
                fn_selectMbLogin(loginId, "simpleLogin", "Y", paramData.redisKey);
            }
        },
        error: function(xhr,status,error){
            var err = JSON.parse(xhr.responseText);
            alert(xhr.status);
            alert(err.message);
        }
    });
}
var lnkgInfoObj;
$(function(){
    $("div.sns-login > a").off("click").on("click",function(){
        lnkgInfoObj = $(this);
        simpleLoginWith($(this).attr("lnkgTy"));
    });
});
</script>
		<form id="loginForm">
			<input type="hidden" name="redisKey" value=""> <input
				type="hidden" name="menuId" value=""> <input type="hidden"
				name="mappingId" value=""> <input type="hidden"
				name="rtnParam" value=""> <input type="hidden"
				name="certType" value=""> <input type="hidden" name="preUrl"
				value="">

			<!-- 좌석도 로그인 프로세스 여부PARAM-->
			<input type="hidden" name="bokdLoginAt" value=""> <input
				type="hidden" name="bokdLoginParam" value=""> <input
				type="hidden" name="nonMbCertRedisKey" value=""> <input
				type="hidden" name="nonMbCertedMblpNo" value=""> <input
				type="hidden" name="reloadYn" value=""> <input type="hidden"
				name="validDataRevisnYn" value="N">

		</form>

		<!-- 로그인 레이어팝업 시작 -->
		<!-- 화면ID  M-ME-LO-01 -->
		<!-- 화면ID  M-ME-CC-01 -->
		<div style="display: none;">
			<a id="loginPupupATag"
				href="https://www.megabox.co.kr/booking#layer_login_select"
				class="button active btn-modal-open" w-data="850" h-data="484"></a>
		</div>

		<section id="layer_login_select" class="modal-layer"
			style="z-index: 501;"> <a
			href="https://www.megabox.co.kr/booking" class="focus">레이어로 포커스
			이동 됨</a> <a href="https://www.megabox.co.kr/booking#" class="focus"
			title="레이어로 포커스 이동 됨">레이어로 포커스 이동 됨<!--레이어로 포커스 이동 됨--></a>
		<div class="wrap"
			style="width: 850px; height: 556px; margin-left: -425px; margin-top: -278px;">
			<header class="layer-header">
			<h3 class="tit">로그인</h3>
			</header>

			<div class="layer-con" style="height: 511px;">

				<div class="tab-list tab-layer">
					<ul>
						<li class="on"><a
							href="https://www.megabox.co.kr/booking#login_tab_01"
							title="회원 로그인 선택">회원 로그인<!--회원 로그인--></a></li>
						<li><a href="https://www.megabox.co.kr/booking#login_tab_02"
							title="비회원 로그인 선택">비회원 로그인<!--비회원 로그인--></a></li>
					</ul>
				</div>

				<!-- tab-cont-wrap -->
				<div class="tab-cont-wrap">
					<!-- tab 회원 로그인 -->
					<div id="login_tab_01" class="tab-cont on">
						<a href="https://www.megabox.co.kr/booking" class="ir"></a><a
							href="https://www.megabox.co.kr/booking" class="ir" title="로그인"></a>

						<div class="login-member col-2">
							<!-- col-wrap -->
							<div class="col-wrap">
								<div class="col left">
									<div class="login-input-area">
										<input autocomplete="off" id="ibxLoginId" maxlength="20"
											type="text" placeholder="아이디" title="아이디를 입력하세요"
											class="input-text strTrim">
										<!--아이디-->
										<!--아이디를 입력하세요-->
										<input autocomplete="off" id="ibxLoginPwd" maxlength="20"
											type="password" placeholder="비밀번호" title="비밀번호를 입력하세요"
											class="input-text mt15">
										<!--비밀번호-->
										<!--비밀번호를 입력하세요-->
										<div class="alert"></div>

										<!-- chk-util -->
										<div class="chk-util">
											<div class="left">
												<input id="chkIdSave" type="checkbox"> <label
													for="chkIdSave">아이디 저장<!--아이디 저장--></label>
											</div>

											<div class="right">
												<div class="hp-ad">
													<a
														href="https://www.sepay.org/spm/join?regSiteCode=XF&amp;ctgCode=1&amp;subCode=1"
														title="휴대폰 간편 로그인 선택" target="_blank"><span>휴대폰
															간편로그인<!--휴대폰 간편로그인-->
													</span> <em>광고<!--광고--></em></a>
												</div>
											</div>
										</div>
										<!--// chk-util -->

										<button id="btnLogin" type="button"
											class="button purple large btn-login" disabled="disabled">
											로그인
											<!--로그인-->
										</button>

										<div class="link">
											<a href="https://www.megabox.co.kr/user-find"
												title="ID/PW 찾기 선택">ID/PW 찾기<!--ID/PW 찾기--></a> <a
												href="https://www.megabox.co.kr/join" title="회원가입 선택">회원가입<!--회원가입--></a>
											<a
												href="https://www.megabox.co.kr/on/oh/ohg/MbLogin/viewNonMbLogin.rest"
												title="비회원 예매확인 선택">비회원 예매확인<!--비회원 예매확인--></a>
										</div>

										<div class="sns-login">
											<a href="javaScript:void(0)" lnkgty="FACEBOOK"
												title="페이스북으로 로그인 선택"><img
												src="resources/booking_2_files/ico-facebook.png" alt="페이스북">
												<!--페이스북--> 페이스북으로 로그인<!--페이스북으로 로그인--></a> <a
												href="javaScript:void(0)" lnkgty="NAVER" title="네이버로 로그인 선택"><img
												src="resources/booking_2_files/ico-naver.png" alt="네이버">
												<!--네이버--> 네이버로 로그인<!--네이버로 로그인--></a> <a
												href="javaScript:void(0)" lnkgty="KAKAO"
												title="카카오톡으로 로그인 선택"><img
												src="resources/booking_2_files/ico-kakao.png" alt="카카오톡">
												<!--카카오톡--> 카카오톡으로 로그인<!--카카오톡으로 로그인--></a> <a
												href="javaScript:void(0)" lnkgty="PAYCO" title="페이코로 로그인 선택"><img
												src="resources/booking_2_files/ico-payco.png" alt="페이코">
												<!--페이코--> 페이코로 로그인<!--페이코로 로그인--></a>
										</div>
									</div>
								</div>

								<div class="col right">
									<div class="login-ad" id="Rw6jtk0hQTuOBSzFbvGGlw"></div>
								</div>
							</div>
							<!--// col-wrap -->
						</div>
					</div>
					<!--// tab 회원 로그인 -->

					<!-- tab 비회원 로그인 -->
					<div id="login_tab_02" class="tab-cont">
						<a href="https://www.megabox.co.kr/booking" class="ir"></a><a
							href="https://www.megabox.co.kr/booking" class="ir"
							title="비회원 로그인"></a>

						<div class="login-member col-2">
							<!-- col-wrap -->
							<div class="col-wrap">
								<div class="col left">

									<div class="no-member-login-table">
										<table
											summary="이름, 생년월일, 휴대폰번호, 인증번호, 비밀번호, 비밀번호 확인 항목을 가진 비회원 로그인 입력 표">
											<caption>
												이름, 생년월일, 휴대폰번호, 인증번호, 비밀번호, 비밀번호 확인 항목을 가진 비회원 로그인 입력 표
												<!--이름, 생년월일, 휴대폰번호, 인증번호, 비밀번호, 비밀번호 확인 항목을 가진 비회원 로그인 입력 표-->
											</caption>
											<colgroup>
												<col style="width: 110px;">
												<col>
											</colgroup>
											<tbody>
												<tr>
													<th scope="row"><label for="ibxNonMbNm">이름<!--이름--></label>
													</th>
													<td><input maxlength="20" id="ibxNonMbNm" type="text"
														placeholder="이름" class="input-text"> <!--이름--></td>
												</tr>
												<tr>
													<th scope="row"><label for="ibxNonMbByymmdd">생년월일<!--생년월일--></label>
													</th>
													<td><input maxlength="6" id="ibxNonMbByymmdd"
														type="text" placeholder="생년월일 앞6자리" class="input-text">
														<!--주민번호 앞 6자리--></td>
												</tr>
												<tr>
													<th scope="row"><label for="ibxNonMbTelno">휴대폰번호<!--휴대폰번호--></label>
													</th>
													<td>
														<div class="hp-input">
															<input maxlength="11" id="ibxNonMbTelno" type="text"
																placeholder="- 없이 입력" class="input-text">
															<!--- 없이 입력-->
															<button id="nonMbCertNoSend" type="button"
																class="button gray" disabled="disabled">
																인증요청
																<!--인증요청-->
															</button>
														</div>
														<div id="mblpInput-error-text" class="alert"></div>
													</td>
												</tr>
												<tr id="nonMbCertRow">
													<th scope="row"><label for="mblpCharCertNo">인증번호<!--인증번호--></label>
													</th>
													<td>
														<div class="chk-num">
															<div class="line">
																<input maxlength="4" id="mblpCharCertNo" type="text"
																	class="input-text">

																<div class="time-limit" id="timer">3:00</div>
															</div>

															<button id="btnMblpCharCert" type="button"
																class="button purple" disabled="disabled">
																확인
																<!--확인-->
															</button>
														</div>
														<div id="nonMbCert-error-text" class="alert"></div>
													</td>
												</tr>
												<tr>
													<th scope="row"><label for="ibxNonMbPwd">비밀번호</label>
														<!--비밀번호--></th>
													<td><input maxlength="4" id="ibxNonMbPwd"
														type="password" placeholder="비밀번호(숫자 4자리)"
														class="input-text"> <!--비밀번호(숫자 4자리)--></td>
												</tr>
												<tr>
													<th scope="row"><label for="ibxNonMbPwdConfirm">비밀번호<!--비밀번호-->확인<!--확인--></label>
													</th>
													<td><input maxlength="4" id="ibxNonMbPwdConfirm"
														type="password" placeholder="비밀번호(숫자 4자리) 확인"
														class="input-text"> <!--비밀번호(숫자 4자리) 확인-->
														<div id="nonMbPwdErrText" class="alert"></div></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>

								<div class="col right">

									<div class="no-member-privacy-rule">
										<p class="tit">
											비회원예매 개인정보 처리방침
											<!--비회원예매 개인정보 처리방침-->
										</p>

										<div class="cont">
											<dl>
												<dt>수집목적</dt>
												<dd>비회원예매 서비스 제공 / 이용자식별 / 구매 및 결제</dd>
												<dt>수집항목</dt>
												<dd>이름, 생년월일, 휴대폰번호, 비밀번호</dd>
												<dt>보유기간</dt>
												<dd class="ismsimp">관람 또는 취소 후 7일 이내</dd>
												<!--<dt>수집목적</dt><dd>비회원예매 서비스 제공 / 이용자식별 / 구매 및  결제</dd><dt>수집항목</dt><dd>이름, 생년월일, 휴대폰번호, 비밀번호</dd><dt>보유기간</dt><dd>관람 또는 취소 후 7일 이내</dd>-->
											</dl>

											<div class="btn-agree">
												<input type="radio" id="chkNonMbBokdPersonInfoProcTrue"
													name="chkNonMbBokdPersonInfoProc"> <label
													for="chkNonMbBokdPersonInfoProcTrue">동의<!--동의--></label> <input
													type="radio" id="chkNonMbBokdPersonInfoProcFalse"
													name="chkNonMbBokdPersonInfoProc" class="ml20"> <label
													for="chkNonMbBokdPersonInfoProcFalse">미동의<!--미동의--></label>
											</div>

											<ul class="dot-list gblue mt20">
												<li class="font-gblue">정보수집에 동의를 거부할 수 있으며, 동의하지 않을 경우
													비회원 예매서비스를 이용하실 수 없습니다.<!--정보수집에 동의를 거부할 수 있으며, 동의하지 않을 경우 비회원 예매서비스를 이용하실 수 없습니다.-->
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<!--// col-wrap -->

							<div class="btn-group">
								<button id="btnChkNonMbLogin" type="button"
									class="button purple" disabled="disabled">확인</button>
								<a id="aNonMbLogin"
									href="https://www.megabox.co.kr/booking#layer_no_member_chk"
									class="button purple btn-modal-open" w-data="600" h-data="320"
									style="display: none;"></a>
							</div>
						</div>
					</div>
					<!--// tab 비회원 로그인 -->
				</div>
				<!--// tab-cont-wrap -->
			</div>

			<button type="button" class="btn-modal-close">
				레이어 닫기
				<!--레이어 닫기-->
			</button>
		</div>
		</section>

		<section id="layer_no_member_chk" class="modal-layer"> <a
			href="https://www.megabox.co.kr/booking" class="focus">레이어로 포커스
			이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
			<h3 class="tit">알림</h3>
			</header>

			<div class="layer-con">
				<p>티켓 발권을 위한 입력정보를 확인해 주세요.</p>

				<div class="table-wrap v1">
					<table class="data-table"
						summary="이름, 생년월일, 휴대폰번호 항목을 가진 비회원 티켓 발권을 위한 입력정보 표">
						<caption>이름, 생년월일, 휴대폰번호 항목을 가진 비회원 티켓 발권을 위한 입력정보 표</caption>
						<colgroup>
							<col style="width: 80px;">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th scope="row" class="a-l">이름</th>
								<td></td>
							</tr>
							<tr>
								<th scope="row" class="a-l">생년월일</th>
								<td></td>
							</tr>
							<tr>
								<th scope="row" class="a-l">휴대폰번호</th>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button close-layer small">취소</button>
				<button id="btnNonMbLogin" type="button" class="button purple small"
					disabled="disabled">확인</button>
			</div>

			<button id="btnNonMbModalClose" type="button" class="btn-modal-close">레이어
				닫기</button>
		</div>
		</section>


		<script type="text/javascript">
    $(function(){
        
            
            
            	$('#header .right-link .before').hide();
            	$('#header .right-link .after').show();
            
        

        // 웹에서만 실행 -> facebook을 로드하지 않는 템플릿에서 반복적인 오류 발생으로 hreader로 이전
        if(!MegaboxUtil.Common.isMobile() && !MegaboxUtil.Common.isApp())
            MegaboxUtil.Share.init();
    });

    //로그인 버튼
    $(document).on('click', '#moveLogin', function() {

        fn_viewLoginPopup('default','pc');

    });

    var sysCd = 'ON';

  	//넷퍼넬 스킨 타입 지정
	NetfunnelChk.setting( sysCd, MegaboxUtil.Common.isApp() );

</script>


		<!-- 여기부터 헤더 시작!!!!!!!!!!!!!!!!!!!!!!!!!1 -->
		<!-- header -->
		<jsp:include page="../layout/headerWhite.jsp"></jsp:include>
		<!--// header -->

		<!-- 로그인 DB(ajax)판별(현우) -->
		<script type="text/javascript">
var idck = 0;
var f = document.form;

$(function() {
	
    $("#loginCheck").click(function() {

        var obj = new Object(); 
        obj.id = $("#id").val();
        obj.pwd = $("#pwd").val();

        var json_data = JSON.stringify(obj); // form의 값을 넣은 오브젝트를 JSON형식으로 변환
        
        $.ajax({
            type : 'POST',
            data : json_data,
            url : "/moviestar/login2",
            contentType : "application/json; charset=UTF-8",
            success : function(data) {
            	
            	if(data.cnt==0) {
                    alert("아이디 또는 비밀번호가 틀립니다.");
					$("#id").focus();
                    	                
                } else {
                    alert("로그인 성공");
                    //아이디가 중복하지 않으면  idck = 1 
                    idck = 1;
                    joinCheck()
                }     
            },
            beforeSend:showRequest,
            error:function(request,status,error){
                //alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
             }

        });
        
    });
});
</script>


<!-- 주소API연결(현우) -->

<script type="text/javascript">
// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. 
// (＂팝업 API 호출 소스"도 동일하게 적용시켜야 합니다.)
//document.domain = "abc.go.kr";
function goPopup(){
//경로는 시스템에 맞게 수정하여 사용
//호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를
//호출하게 됩니다.
var pop = window.open("jusoPopup","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
//** 2017년 5월 모바일용 팝업 API 기능 추가제공 **/
// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서
// 실제 주소검색 URL(https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
// var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}
function jusoCallBack(roadFullAddr){
 // 2017년 2월 제공항목이 추가되었습니다. 원하시는 항목을 추가하여 사용하시면 됩니다.
 document.form.roadFullAddr.value = roadFullAddr;

}
</script>
<!-- end 주소API -->

		<!-- 회원가입 빈칸 검증(현우) -->
		<script type="text/javascript">
    
    function joinCheck() {
		
    	var f = document.form;
    	//아이디
    	if(!f.id.value) {

			alert("아이디를 입력하세요!");
			document.form.id.focous();
			return;
			}
    	
    	//아아디
		if(f.id.value.length<5 || f.id.value.length>10) {

			alert("아이디를 5~10자 사이로 입력하세요!");
			document.form.id.focous();
			return;
		}
    	
		//이름
		if(!f.name.value) {

			alert("성명을 입력하세요!");
			document.form.id.focous();
			return;
			}
		
		//이름 4자리까지 체크
		if(f.name.value.length>4) {

			alert("성명은 최대 4자까지 가능합니다!");
			document.form.id.focous();
			return;
			}
		
		
		//비밀번호
		if(!f.pwd.value) {
		
			alert("비밀번호입력!");
			f.pwd.focous();
			return;
		}
		
		//비밀번호 길이
		if(f.pwd.value.length<6 || f.pwd.value.length>12) {
		
			alert("비밀번호는 6~12자 사이로 입력가능합니다.!");
			f.pwd.focous();
			return;
		}
    	
		//이메일 입력
		if(!f.email1.value) {
			
			alert("이메일을 입력하세요!");
			document.form.email.focous();
			return;
		}
		//이메일 입력
		if(!f.email2.value) {
			
			alert("이메일을 입력하세요!");
			document.form.email.focous();
			return;
		}
		
		//생년월일
		if(!f.birth_year.value) {
			
			alert("생일 입력!");
			document.form.birth_year.focous();
			return;
		}
		
		//생년월일
		if(!f.birth_month.value) {
			
			alert("생일 입력!");
			document.form.birth_month.focous();
			return;
		}
		
		//생년월일
		if(!f.birth_day.value) {
			
			alert("생일 입력!");
			document.form.birth_day.focous();
			return;
		}
		
		alert("회원가입 성공!!!!!");
		
		f.action="<%=cp%>/movie/join_ok";
		f.submit();
		
	}
    
</script>


<!-- ID 중복처리(현우) -->
<script type="text/javascript">

//아이디의 유효성 검사
var regExp1= /^[A-Za-z0-9+]{4,12}$/;

//아이디 체크여부 확인 (아이디 중복일 경우 = 0 , 중복이 아닐경우 = 1 )
$(function() {
	$("#id").keyup(function(){
		//userid 를 param.
        var id =  $("#id").val();

        $.ajax({
            async: true,
            type : 'POST',
            data : id,
            url : "idcheck",
            dataType : "json",
            contentType: "application/json; charset=UTF-8",
            success : function(data) {
				//입력창이 비었을경우 html 지워줌
            	if(id==""){
            		var newDiv=document.getElementById("result");
                  	newDiv.innerHTML="";
                    newDiv.innerHTML=html;
                  	idck = 0;
				}
            	else if(!regExp1.test(id)){
                  	var html="<p class=\"text\" style=\"color:red;\">"
                      	html+="형식에 맞게 ID를 입력해주세요.</p>"
                      	var newDiv=document.getElementById("result");
                      	newDiv.innerHTML=html;
                    idck = 0;
            	}
				else if(data.cnt > 0) {
                    
                    $("#id").focus();
                  	var html="<p class=\"text\" style=\"color:red;\">"
                  	html+="사용할 수 없는 ID입니다.</p>"
                  	var newDiv=document.getElementById("result");
                  	newDiv.innerHTML=html;
                  	
                    idck = 0;
                
                }else {
                  	var html="<p class=\"text\" style=\"color:blue;\">"
                    html+="사용 가능한 ID입니다.</p>"
                    var newDiv=document.getElementById("result");
                    newDiv.innerHTML=html;
                    
                    //아이디가 중복하지 않으면  idck = 1 
                    idck = 1;
                }
                
            },
            error : function(error) {
                //alert("error : " + error);
            	var html="<p class=\"text\" style=\"color:red;\">"
                html+="ID를 입력해주세요.</p>"
                var newDiv=document.getElementById("result");
                newDiv.innerHTML=html;
                idck = 0;
            }
        });
		
	});
});

</script>




<!-- 여기부터 회원가입 UI(현우) -->
		<div class="container" align="center">
			<div class="col-lg-6" align="center" style="width: 400px;">

				<div class="title">Join</div>
				<form action="/join_ok" method="post" name="form">

					<div class="" align="left">
						<label for="id">아이디</label> <input type="text"
							class="form-control" id="id" name="id" placeholder="아이디를 입력하세요"
							value="">
					</div>
					</br>
					<div>
						<div id="result"></div>
						<!-- 여기서 텍스트 뿌려줌 -->
					</div>


					<div class="input_group" style="margin-top: 5px;">
						<div id="result" class="input_wrap w30p"></div>
					</div>
					<div class="" align="left">
						<label for="">이름</label> <input class="form-control" type="text"
							id="name" name="name" placeholder="이름을 입력하세요">
					</div>
					</br>
					<div class="" align="left">
						<label for="">비밀번호</label> <input type="password"
							class="form-control" id="pwd" name="pwd"
							placeholder="패스워드를 입력하세요"
							onkeydown="javascript:if(event.keyCode == 13) {login();}">
					</div>
					</br>
					<div class="" align="left">
						<label for="">이메일</label> <input type="text" class="form-control"
							id="email1" name="email1" placeholder="email"> <span
							class="input-group-text">@</span> <select class="form-control"
							name="email2" id="email2">
							<option value="" selected="selected">선택</option>
							<option value="naver.com">naver.com</option>
							<option value="daum.net">daum.net</option>
							<option value="nate.com">nate.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="" selected="selected">직접입력</option>
						</select>
					</div>
					</br>
					<div class="" align="left">
						<label for="">주소</label> </br> <input type="text" class="form-control3"
							id="roadfulladdr" name="roadfulladdr" style="width: 400px;" />
						<button class="button3" type="button" onClick="goPopup();">주소검색</button>
					</div>
					<div class="" align="left">
						<label for="">생년월일</label> </br> <select name="birth_year"
							id="birth_year" style="width: 113px;">
							<option value="1922">1922</option>
							<option value="1923">1923</option>
							<option value="1924">1924</option>
							<option value="1925">1925</option>
							<option value="1926">1926</option>
							<option value="1927">1927</option>
							<option value="1928">1928</option>
							<option value="1929">1929</option>
							<option value="1930">1930</option>
							<option value="1931">1931</option>
							<option value="1932">1932</option>
							<option value="1933">1933</option>
							<option value="1934">1934</option>
							<option value="1935">1935</option>
							<option value="1936">1936</option>
							<option value="1937">1937</option>
							<option value="1938">1938</option>
							<option value="1939">1939</option>
							<option value="1940">1940</option>
							<option value="1941">1941</option>
							<option value="1942">1942</option>
							<option value="1943">1943</option>
							<option value="1944">1944</option>
							<option value="1945">1945</option>
							<option value="1946">1946</option>
							<option value="1947">1947</option>
							<option value="1948">1948</option>
							<option value="1949">1949</option>
							<option value="1950">1950</option>
							<option value="1951">1951</option>
							<option value="1952">1952</option>
							<option value="1953">1953</option>
							<option value="1954">1954</option>
							<option value="1955">1955</option>
							<option value="1956">1956</option>
							<option value="1957">1957</option>
							<option value="1958">1958</option>
							<option value="1959">1959</option>
							<option value="1960">1960</option>
							<option value="1961">1961</option>
							<option value="1962">1962</option>
							<option value="1963">1963</option>
							<option value="1964">1964</option>
							<option value="1965">1965</option>
							<option value="1966">1966</option>
							<option value="1967">1967</option>
							<option value="1968">1968</option>
							<option value="1969">1969</option>
							<option value="1970">1970</option>
							<option value="1971">1971</option>
							<option value="1972">1972</option>
							<option value="1973">1973</option>
							<option value="1974">1974</option>
							<option value="1975">1975</option>
							<option value="1976">1976</option>
							<option value="1977">1977</option>
							<option value="1978">1978</option>
							<option value="1979">1979</option>
							<option value="1980">1980</option>
							<option value="1981">1981</option>
							<option value="1982">1982</option>
							<option value="1983">1983</option>
							<option value="1984">1984</option>
							<option value="1985">1985</option>
							<option value="1986">1986</option>
							<option value="1987">1987</option>
							<option value="1988">1988</option>
							<option value="1989">1989</option>
							<option value="1990">1990</option>
							<option value="1991">1991</option>
							<option value="1992">1992</option>
							<option value="1993">1993</option>
							<option value="1994">1994</option>
							<option value="1995">1995</option>
							<option value="1996">1996</option>
							<option value="1997" selected="">1997</option>
							<option value="1998">1998</option>
							<option value="1999">1999</option>
							<option value="2000">2000</option>
							<option value="2001">2001</option>
							<option value="2002">2002</option>
							<option value="2003">2003</option>
							<option value="2004">2004</option>
							<option value="2005">2005</option>
							<option value="2006">2006</option>
							<option value="2007">2007</option>
							<option value="2008">2008</option>
							<option value="2009">2009</option>
							<option value="2010">2010</option>
							<option value="2011">2011</option>
							<option value="2012">2012</option>
							<option value="2013">2013</option>
							<option value="2014">2014</option>
							<option value="2015">2015</option>
							<option value="2016">2016</option>
							<option value="2017">2017</option>
							<option value="2018">2018</option>
							<option value="2019">2019</option>
							<option value="2020">2020</option>
							<option value="2021">2021</option>
							<option value="2022">2022</option>
						</select> 년 <select name="birth_month" id="birth_month"
							style="width: 113px;">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
						</select> 월 <select name="birth_day" id="birth_day" style="width: 113px;">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
							<option value="18">18</option>
							<option value="19">19</option>
							<option value="20">20</option>
							<option value="21">21</option>
							<option value="22">22</option>
							<option value="23">23</option>
							<option value="24">24</option>
							<option value="25">25</option>
							<option value="26">26</option>
							<option value="27" selected="">27</option>
							<option value="28">28</option>
							<option value="29">29</option>
							<option value="30">30</option>
							<option value="31">31</option>
						</select> 일
					</div>

					<div class="" align="center">
						</br>
						<button onclick="joinCheck();" class="button1" type="button"
							id="login">회원가입</button>
						<button type="button" onclick="javascript:history.back();"
							class="button1">취소</button>
					</div>
				</form>
			</div>
		</div>
		<!-- 		<div id="bodyContent"> -->


	<!-- footer -->
	<jsp:include page="../layout/footerGrey.jsp"></jsp:include>
    <!-- //footer -->

		<!-- 모바일 때만 출력 -->
		<div class="go-mobile" style="display: none;">
			<a href="https://www.megabox.co.kr/booking#"
				data-url="https://m.megabox.co.kr">모바일웹으로 보기 <i
				class="iconset ico-go-mobile"></i></a>
		</div>
	</div>
	<form id="mainForm"></form>
	<script type="text/javascript">
		(function(w, d, a){
		    w.__beusablerumclient__ = {
		        load : function(src){
		            var b = d.createElement("script");
		            b.src = src; b.async=true; b.type = "text/javascript";
		            d.getElementsByTagName("head")[0].appendChild(b);
		        }
		    };w.__beusablerumclient__.load(a);
		})(window, document, "//rum.beusable.net/script/b200617e104748u388/bc4af2fa1e");
	</script>

	<div class="normalStyle"
		style="display: none; position: fixed; top: 0; left: 0; background: #000; opacity: 0.7; text-indent: -9999px; width: 100%; height: 100%; z-index: 100;">닫기</div>
	<div class="alertStyle"
		style="display: none; position: fixed; top: 0px; left: 0px; background: #000; opacity: 0.7; width: 100%; height: 100%; z-index: 5005;"></div>
	<div id="fatkun-drop-panel">
		<a id="fatkun-drop-panel-close-btn">×</a>
		<div id="fatkun-drop-panel-inner">
			<!-- <div class="fatkun-content">
				<svg class="fatkun-icon" viewBox="0 0 1024 1024" version="1.1"
					xmlns="http://www.w3.org/2000/svg" p-id="5892">
				<path
					d="M494.933333 782.933333c2.133333 2.133333 4.266667 4.266667 8.533334 6.4h8.533333c6.4 0 10.666667-2.133333 14.933333-6.4l2.133334-2.133333 275.2-275.2c8.533333-8.533333 8.533333-21.333333 0-29.866667-8.533333-8.533333-21.333333-8.533333-29.866667 0L533.333333 716.8V128c0-12.8-8.533333-21.333333-21.333333-21.333333s-21.333333 8.533333-21.333333 21.333333v588.8L249.6 475.733333c-8.533333-8.533333-21.333333-8.533333-29.866667 0-8.533333 8.533333-8.533333 21.333333 0 29.866667l275.2 277.333333zM853.333333 874.666667H172.8c-12.8 0-21.333333 8.533333-21.333333 21.333333s8.533333 21.333333 21.333333 21.333333H853.333333c12.8 0 21.333333-8.533333 21.333334-21.333333s-10.666667-21.333333-21.333334-21.333333z"
					p-id="5893"></path></svg>
				<div class="fatkun-title">Drag and Drop</div>
				<div class="fatkun-desc">The image will be downloaded</div>
			</div> -->
		</div>
	</div>
</body>
</html>