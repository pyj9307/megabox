package com.finalProject.controller;

import java.net.URLEncoder;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.persistence.EntityNotFoundException;
import javax.servlet.ServletRequest;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.dto.MemberDTO;
import com.finalProject.dto.MemberInfoDTO;
import com.finalProject.entity.MemberInfo;
import com.finalProject.repository.MemberInfoRepository;
import com.finalProject.service.MemberInfoService;
import com.finalProject.service.MemberService;

import lombok.RequiredArgsConstructor;

//로그인 - 회원가입 컨트롤러

// - 로그인(DB비교) / 회원가입(id중복확인) / 마이페이지(회원정보수정) / 마이페이지(회원탈퇴) / ID찾기 / PW 찾기 

@RequestMapping("/movie")
@Controller
@RequiredArgsConstructor
public class MemberInfoController {
    private final MemberInfoService memberInfoService;
    private final MemberInfoRepository memberInfoRepository;
	@Resource
    private final PasswordEncoder passwordEncoder;
	@Resource
	private MemberService memberService;
	
    // 로그인 화면
    @GetMapping(value = "/login")
    public String loginMember(){
    	// String형으로 뷰 주소 출력하기.
        return "member/login";
    }
    
	//로그인 처리
	@RequestMapping(value = "/login_ok", method = RequestMethod.POST)
	public ModelAndView login_ok(HttpSession session, boolean rememberId, HttpServletResponse response,
			HttpServletRequest request) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		// 로그인뷰에서 id 파라미터 가져오기
		String id = request.getParameter("id");
		// memberDTO형으로 유저 정보 가져오기
		MemberDTO dto = memberService.getReadData(id); 
		// 세션에 customInfo라는 이름으로 매핑 형태로 저장. jsp에서 ${sessionScope.customInfo.키} 형태로 불러오기
		session.setAttribute("customInfo", dto);
		// 아이디 저장 체크박스 설정.
		if(rememberId) {
			//1. 쿠키 생성
			Cookie cookie = new Cookie("id", id);
			cookie.setMaxAge(60*60);//1시간
			// 2. 응답에 저장
			response.addCookie(cookie);
		}else {
			//쿠키 삭제
			Cookie cookie = new Cookie("id", null);
			cookie.setMaxAge(0); //쿠키 삭제
			response.addCookie(cookie);
		}
		// 메인화면 불러오기
		mav.setViewName("redirect:/");
		return mav;
	}
	
	//회원가입 화면 - String형으로 뷰 주소 출력하기.
    @GetMapping(value = "/join")
    public String join() {
    	return "member/join";
	}
	
	//주소 API
	@RequestMapping(value = "/jusoPopup")
	public ModelAndView juso() throws Exception {
			
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("member/jusoPopup");
			
		return mav;
	}

    // 회원가입 처리
    @PostMapping(value = "/join_ok")
    // @Valid 입력 폼에서 유효성 체크 실시(@NotBlank, @NotNull 등)
    public String newMember(@Valid MemberInfoDTO memberInfoDTO, BindingResult bindingResult, Model model){

    	if(bindingResult.hasErrors()){
            return "member/join";
        }
        try {
        	// 엔티티 클래스에서 정의했던 createMember 메서드를 이용해서 MemberInfo 형태에 담음
            MemberInfo memberInfo = MemberInfo.createMemberInfo(memberInfoDTO);
            // 서비스 클래스에서 정의한 saveMemberInfo 메서드를 이용해서 디비에 저장.
            memberInfoService.saveMemberInfo(memberInfo);
            // 유효성 체크 실패 시 오류메세지 출력
        } catch (IllegalStateException e){
            model.addAttribute("errorMessage", e.getMessage());
            return "member/join";
        }
        return "member/login";
    }
	
    // 마이 페이지 처리(회원정보 수정)
    @PostMapping(value = "/mypage_ok")
    // @Valid 입력 폼에서 유효성 체크 실시
    public String updateMember(@Valid MemberInfoDTO memberInfoDTO, long longid, 
    		ServletRequest request, HttpSession session) throws Exception{
    	
    	// 뷰에서 String 형태로 받아오는 파라미터를 long 형태로 변환해서 longid 변수에 담음
		longid = Long.parseLong(request.getParameter("longid"));
		// 서비스 클래스에서 정의한 메서드로 디비에 업데이트 처리
        memberInfoService.updateMemberInfo(longid, memberInfoDTO);
        // 로그인 페이지 이동
        return "member/login";
    }

	// 마이 페이지 처리(회원정보 삭제)
    @PostMapping("/delete")
	public String deletePost(long longid, ServletRequest request, HttpSession session) throws Exception {	
    	
    	// String형으로 받아오는 longid 파라미터 값을 long 형으로 변경.
    	longid = Long.parseLong(request.getParameter("longid"));
		// 서비스 클래스에서 정의한 메서드로 디비에 삭제처리
    	memberInfoService.deleteMemberInfo(longid);
    	// 세션만료
		session.invalidate();
		// 메인페이지 돌아가기
		return "redirect:/";
	}

    // 마이 페이지(jsp에서 ${customInfo.키} 형태로 세션에 저장된 회원정보 불러오기)
    @GetMapping(value = "/mypage")
    public String myPage2() throws Exception{
        return "member/mypage";
    }

	//로그아웃 처리 - (완성)
	@GetMapping("/logout")
	public ModelAndView logout(HttpSession session) {
		
		ModelAndView mav = new ModelAndView();
		// 세션 종료
		session.invalidate();
		
		// 세션 종료하고 메인 페이지로 리다이렉트(이동)
		mav.setViewName("redirect:/");
		
		return mav;
	}

    // 타임리프 테스트용 메서드(잘됨)
    @GetMapping(value = "/ex01")
    public String thymeleafExample01(Model model){
        model.addAttribute("data", "타임리프 예제 입니다.");
        return "thymeleaf/member/mypage3";
    }
	
	//로그인 DB판별 Ajax
	@RequestMapping(value = "/loginAjax",method = {RequestMethod.GET,RequestMethod.POST})
    @ResponseBody
    public Map<Object, Object> loginAjax(@RequestBody MemberDTO dto) throws Exception {
		
		int count=0;
		Map<Object, Object> map = new HashMap<Object, Object>();
		
		count = memberService.memberlogin(dto);
		
		map.put("cnt", count);
		
		return map;
	}
	
	//ID 중복확인
	@RequestMapping(value = "/idcheck",method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
    public Map<Object, Object> idcheck(@RequestBody String id) throws Exception {
		
		int count=0;
		Map<Object, Object> map = new HashMap<Object, Object>();
		
		count = memberService.idcheck(id);
		
		map.put("cnt", count);
		
		return map;
	}
	
	// ID 찾기 화면
	@RequestMapping(value = "/searchId", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView searchId(HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("member/searchId");
		
		return mav;
	}
	
	// ID찾기 화면 처리
	@RequestMapping(value = "/searchId_ok", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView searchId_ok(MemberDTO dto, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		dto.getEmail1();
		String id = memberService.findId(dto);
		request.setAttribute("id", id);
		
		
		//return "/movie/searchId_com";
		mav.setViewName("member/searchId_com");
		
		return mav;
	}
	
	//Id 찾기 DB판별 Ajax
	@RequestMapping(value = "/idAjax",method = {RequestMethod.GET,RequestMethod.POST})
    @ResponseBody
    public Map<Object, Object> idAjax(@RequestBody MemberDTO dto ) throws Exception {
        
        String id="";
        Map<Object, Object> map = new HashMap<Object, Object>();
 
        id = memberService.findId(dto);
        
        map.put("cnt", id);
 
        return map;
    }
	
	// PW 찾기 화면
	@RequestMapping(value = "/searchPw", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView searchPw(HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("member/searchPw");
		
		return mav;
	}
	
	// PW 찾기 화면 처리
	@RequestMapping(value = "/searchPw_ok", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView searchPw_ok(MemberDTO dto, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		//dto.getEmail1();
		//String id = memberService.findId(dto);
		//request.setAttribute("id", id);
		
		dto.getName();
		String pw = memberService.findPw(dto);
		request.setAttribute("pw", pw);
		
		
		mav.setViewName("member/searchPw_com");
		
		return mav;
	}	
	
	// PW 찾기 DB 판별 Ajax
	@RequestMapping(value = "/pwAjax",method = {RequestMethod.GET,RequestMethod.POST})
    @ResponseBody
    public Map<Object, Object> pwAjax(@RequestBody MemberDTO dto ) throws Exception {
        
        //String id="";
        //Map<Object, Object> map = new HashMap<Object, Object>();
        //id = memberService.findId(dto);
        //map.put("cnt", id);
		
		String pw="";
		Map<Object, Object> map = new HashMap<Object, Object>();
		pw = memberService.findPw(dto);
		map.put("cnt", pw);
 
        return map;
    }	

}
