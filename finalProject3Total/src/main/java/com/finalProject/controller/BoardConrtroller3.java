package com.finalProject.controller;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.dto.BoardDTO;
import com.finalProject.dto.BoardDTO2;
import com.finalProject.service.BoardService;
import com.finalProject.service.BoardService2;
import com.finalProject.util.MyUtil;

// 1대1 문의 게시판 컨트롤러
/*
 - API

1:1문의 등록
http://localhost:8080/movie/created3

1:1문의 리스트
http://localhost:8080/movie/list2
 */

@RestController("boardController3")
@RequestMapping("/movie")
public class BoardConrtroller3 {
	
	@Resource
	private BoardService2 boardService2; //얘를 호출하면 BoardServiceImpl이 딸려들어옴

	@Autowired
	MyUtil myUtil; //@Service로 구현된 MyUtil을 불러온것
	
	@RequestMapping(value = "/3")
	public ModelAndView index() throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("index"); //jsp(html)로 갈때는 setViewName // class로 갈때는 setView
		
		return mav;
	}
	
	// 1대1 문의 글작성
	@RequestMapping(value = "/created3", method = RequestMethod.GET)
	public ModelAndView created() throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("notice/created3"); //jsp(html)로 갈때는 setViewName // class로 갈때는 setView
		
		return mav;
	}
	
	// 1eo1 문의 글작성 처리
	@RequestMapping(value = "/created3", method = RequestMethod.POST)
	public ModelAndView created_ok(BoardDTO2 dto, HttpServletRequest request) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		int maxNum = boardService2.maxNum();
		
		dto.setNum(maxNum + 1);
		dto.setIpAddr(request.getRemoteAddr());

		// BoardConrtroller와 구분되도록 insertData2로 변경
		boardService2.insertData2(dto);
		
		mav.setViewName("redirect:/movie/list2");
		
		return mav;
		
	}
	
	
	
	
	

	
		 
}
