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

@RestController("customer")
@RequestMapping("/movie")
public class Customer {
	
	@Resource
	private BoardService2 boardService2; //얘를 호출하면 BoardServiceImpl이 딸려들어옴

	@Autowired
	MyUtil myUtil; //@Service로 구현된 MyUtil을 불러온것
	
	

	@RequestMapping(value = "/customer", method = RequestMethod.GET)
	public ModelAndView created() throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("notice/customer"); //jsp(html)로 갈때는 setViewName // class로 갈때는 setView
		
		return mav;
	}
	
	
	
	
	
	

	
		 
}
