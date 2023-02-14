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

// - 로그인(DB비교) / 회원가입(id중복확인) / 마이페이지(회원정보수정) / ID찾기 / PW 찾기 

@RequestMapping("/movie")
@Controller
@RequiredArgsConstructor
public class MemberInfoController {
	// shop에서 가져온 것
    private final MemberInfoService memberInfoService;
    private final MemberInfoRepository memberInfoRepository;
	@Resource
    private final PasswordEncoder passwordEncoder;
	//얘를 호출하면 MemberServiceImpl이 딸려들어옴
	@Resource
	private MemberService memberService;
	
//	//로그인 화면 - (완성)
//	//@RequestMapping(value = "/moviestar/login", method = RequestMethod.GET)
//	@GetMapping("/login")
//	public ModelAndView login() throws Exception {
//			
//		ModelAndView mav = new ModelAndView();
//			
//		//mav.setViewName("memberLogin");
//		mav.setViewName("member/login");
//		
//		return mav;
//	}
	
    // 로그인 화면 - String형으로 뷰 주소 출력하기.
    @GetMapping(value = "/login")
    public String loginMember(){
        return "member/login";
    }
    
	//로그인 처리 - (완성)
	@RequestMapping(value = "/login_ok", method = RequestMethod.POST)
	public ModelAndView login_ok(HttpSession session, boolean rememberId, HttpServletResponse response,
			HttpServletRequest request) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		//Cookie cookie = null; // 쿠키 생성
		//String id_rem = request.getParameter("idsave"); // 아아디 저장(쿠키활용)
		String id = request.getParameter("id");
		
		MemberDTO dto = memberService.getReadData(id); //하나의 유저 정보 가져오기
//		System.out.println("memberService.getReadData(id); : "+memberService.getReadData(id));
		// customInfo 이름으로 memberDTO형 사용함 - session.setAttribute로 세션에 customInfo라는 이름으로 데이터 불러와서 매핑 형태로 저장. 타임리프에서 ${session.customInfo.pwd} 형태로 불러오면 됨.
		session.setAttribute("customInfo", dto);
//		System.out.println("session.getAttribute(id) : "+session.getAttribute(id));
//		System.out.println("session.setAttribute(\"customInfo\", dto); 의 session : "+session);
//		System.out.println("session.setAttribute(\"customInfo\", dto); 의 dto : "+dto);
//		System.out.println("==========================================================================");
		
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
		//System.out.println(id);
		mav.setViewName("redirect:/");
		
		return mav;
	}
	
//	//회원가입 화면 - (완성)
//	@RequestMapping(value = "/join", method = RequestMethod.GET)
//	public ModelAndView join() throws Exception {
//		
//		ModelAndView mav = new ModelAndView();
//		//System.out.println("Join페이지 성공");
//		mav.setViewName("member/join");
//		
//		return mav;
//	}
	
	//회원가입 화면 - String형으로 뷰 주소 출력하기.
    @GetMapping(value = "/join")
    public String join() {
		System.out.println("회원가입 화면 띄우기 성공");
    	return "member/join";
	}
	
	//주소 API
	@RequestMapping(value = "/jusoPopup")
	public ModelAndView juso() throws Exception {
			
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("member/jusoPopup");
			
		return mav;
	}
	
//	//회원가입 처리 - (완성) 마이바티스
//	@RequestMapping(value = "/join_ok", method = RequestMethod.POST)
//	public ModelAndView join_ok(MemberDTO dto) throws Exception{
//		System.out.println("ModelAndView join_ok 성공");
//		ModelAndView mav = new ModelAndView();
//		
//		memberService.memberJoin(dto);
//
//		System.out.println("memberService.memberJoin(dto); 성공");
//		mav.setViewName("member/login");
//		
//		return mav;
//	}

    // 회원가입 처리 - (완성)jpa로 처리. 패스워드 인코딩 작업은 중지시킴.
    @PostMapping(value = "/join_ok")
    // @Valid 입력 폼에서 유효성 체크 실시(@NotBlank, @NotNull 등)
    public String newMember(@Valid MemberInfoDTO memberInfoDTO, BindingResult bindingResult, Model model){

        if(bindingResult.hasErrors()){
            return "member/join";
        }
//        System.out.println("bindingResult.hasErrors() 성공");

        try {
        	// createMember 엔티티 클래스에서 정의했던 메서드를 이용해 회원 가입시 편함.
            // MemberInfo memberInfo = MemberInfo.createMemberInfo(memberInfoDTO, passwordEncoder); 패스워드 인코딩 작업
            MemberInfo memberInfo = MemberInfo.createMemberInfo(memberInfoDTO);
//            System.out.println("MemberInfo.createMemberInfo(memberInfoDTO) 성공");
            
            memberInfoService.saveMemberInfo(memberInfo);
//            System.out.println("memberInfoService.saveMemberInfo(memberInfo) 성공");
        } catch (IllegalStateException e){
            model.addAttribute("errorMessage", e.getMessage());
            return "member/join";
        }
        System.out.println("model.addAttribute 성공");

		System.out.println("Insert 성공");
        return "member/login";
    }
    
//	//마이 페이지 처리(DB에 수정된 값 저장) - 마이바티스
//	@RequestMapping(value = "/mypage_ok2", method = {RequestMethod.POST, RequestMethod.GET}) 
//	public ModelAndView myPage_ok(MemberDTO dto, HttpServletRequest request, HttpServletResponse response
//			,HttpSession session) throws Exception {
//		
//		System.out.println("마이 페이지 처리");
//		
//		ModelAndView mav = new ModelAndView();
//		
//		MemberDTO info=(MemberDTO)session.getAttribute("customInfo");
//		System.out.println("MemberDTO info=(MemberDTO)session.getAttribute(\"customInfo\"); 의 info : "+info);
//		
//		dto.setId(info.getId());
//		System.out.println("dto.setId(info.getId()); 의 dto : "+dto);
//		
//		memberService.updateMember(dto);
//		System.out.println("memberService.updateMember(dto); 의 memberService : "+memberService);
//		
//		mav.setViewName("redirect:/main");
//		return mav;
//	}
	
    // 마이 페이지 처리(DB에 수정된 값 저장) - jpa 완료
    @PostMapping(value = "/mypage_ok")
    // @Valid 입력 폼에서 유효성 체크 실시
    public String updateMember(MemberInfoDTO memberInfoDTO, long longid, ServletRequest request, HttpSession session) throws Exception{
    	
    	// Long.parseLong으로 뷰에서 String 형태로 받아오는 longid파라미터를 long 형태로 변환해서 longid변수에 담는 함수.
		longid = Long.parseLong(request.getParameter("longid"));
		// 디비에 업데이트 처리
        memberInfoService.updateMemberInfo(longid, memberInfoDTO);
        System.out.println("memberInfoService.updateMemberInfo(longid, memberInfoDTO); 성공");

        return "member/login";
    }

// // 회원정보 삭제 - 마이바티스(안됨)
// 	@RequestMapping(value = "/deleteMember_ok", 
// 			method = {RequestMethod.GET,RequestMethod.POST})
// 	public String deleteMember(HttpServletRequest request, MemberService memberService) throws Exception{
//
// 		System.out.println("회원 탈퇴 처리");
// 		String id = request.getParameter("id");
// 		System.out.println("request.getParameter ok : "+id);
// 		
// 		memberService.deleteMember(id);
// 		System.out.println("deleteMember ok : ");
//
// 		return "redirect:/main";
// 		
// 	}

	// 회원정보 삭제(jpa 완료)
    @PostMapping("/delete")
	public String deletePost(long longid, ServletRequest request, HttpSession session) throws Exception {	
    	
		// System.out.println("회원 탈퇴 처리"); // 메서드 호출 확인
    	// String형으로 받아오는 longid파라미터 값을 long 형으로 변경.
    	longid = Long.parseLong(request.getParameter("longid"));

		// 디비에 삭제처리
    	memberInfoService.deleteMemberInfo(longid);
    	System.out.println("회원 탈퇴 처리 완료");
    	
    	// 세션만료
		session.invalidate();
		
		return "redirect:/";
	}

    // 타임리프 테스트용 메서드(잘됨)
    @GetMapping(value = "/ex01")
    public String thymeleafExample01(Model model){
        model.addAttribute("data", "타임리프 예제 입니다.");
        return "thymeleaf/member/mypage3";
    }

	
//	// 마이 페이지
//	// 여기에 로그인 된 유저의 회원정보를 불러온다.(getReadData)
//	@RequestMapping(value = "/mypage2", method = {RequestMethod.POST, RequestMethod.GET}) 
//	public ModelAndView myPage(HttpServletRequest request, HttpServletResponse response
//			,HttpSession session) throws Exception {
//			
//		ModelAndView mav = new ModelAndView();
//	
//		MemberDTO info=(MemberDTO)session.getAttribute("customInfo");
//		System.out.println("MemberDTO info=(MemberDTO)session.getAttribute(\"customInfo\"); 의 info : "+info);
//		// getReadData는 마이바티스임.
//		MemberDTO dto=memberService.getReadData(info.getId());
//		System.out.println("memberService.getReadData(info.getId()); : "+memberService.getReadData(info.getId()));
//		System.out.println("memberService.getReadData(info.getId()); 의 info.getId() : "+info.getId());
//		 
//		request.setAttribute("dto", dto);
//		System.out.println("request.setAttribute(\"dto\", dto); 의 request : "+request);
//		System.out.println("request.setAttribute(\"dto\", dto); 의 dto : "+dto);
//		
//		mav.setViewName("member/mypage");
//		//mav.setViewName("thymeleaf/member/mypage2");
//		System.out.println("mav.setViewName(\"thymeleaf/member/mypage2\");의 mav :"+mav);
//			
//		return mav;
//	}

	// html 타임리프 적용되는거 알았음. 타임리프로 로그인 시 세션에 저장된 값 찾아서 넣었고, 뷰에 타임리프 문법으로 뿌려짐(완성). 헤더 푸터 미작동 상태
    // jsp 불러오도록 수정.
    @GetMapping(value = "/mypage")
    public String myPage2() throws Exception{
//        return "thymeleaf/member/mypage2";
        return "member/mypage";
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
