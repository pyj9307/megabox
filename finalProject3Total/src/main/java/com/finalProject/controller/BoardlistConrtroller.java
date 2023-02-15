package com.finalProject.controller;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.data.domain.Page;

import org.springframework.data.domain.Pageable;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestMethod;

import com.finalProject.dto.BoardDTO;
import com.finalProject.dto.BoardlistDTO;
import com.finalProject.entity.Boardlist;

import com.finalProject.service.BoardlistService;
import com.finalProject.util.MyUtil;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;

@RestController

@RequestMapping("/boardlist")
/* 보드리스트 URL로 보드리스트Controller에 요청(Request)을 보내고 */

  public class BoardlistConrtroller {
	/* 보드리스트 컨드롤 클래스를 생성한 후 */
	@Autowired

	BoardlistService boardlistService;
	// 보드리스트 서비스 객체를 정의한다

	@Autowired
	MyUtil myUtil; //@Service로 구현된 MyUtil을 불러온것

	@RequestMapping(method = RequestMethod.GET)
    // 루트요청(localhost/boardlist/)시 리스트 보기로
	public ModelAndView index() {

		
		System.out.println("boardlist 호출");
		return new ModelAndView("notice/boardlist");
        // jsp아래 boardlist.jsp 호출
	}

	
	
	
	
	// 게시판 리스트 보기
	@RequestMapping(value = "/{curPage}", method = RequestMethod.GET)
    // 요청된 메소드를 get한다
	public ResponseEntity<Page<Boardlist>> list(Model model, Pageable pageable, @PathVariable Integer curPage) {
   
		Page<Boardlist> page = boardlistService.findAll(curPage);
       //보드리스트 페이지는 findAll 메서드로 일치한 모든 조건의 컬페이지를 찾는다
		return new ResponseEntity<Page<Boardlist>>(page, HttpStatus.OK);
       //그 후 클라이언트 서버에 ok요청을 한다 
	}

	
	
	// 게시판 글 작성

	@RequestMapping(value = "/", method = RequestMethod.POST)
   // post 메서드 형식으로 요청한다
	public ResponseEntity<Void> save(@RequestBody Boardlist boardlist) {
    // @RequestBody 비동기 방식으로 보드리스트에 저장 
		boardlistService.create(boardlist);
       // 보드 리스트 서비스에 create 요청한다
		return new ResponseEntity<Void>(HttpStatus.CREATED);

	}

	
	// 게시판 글 수정
	@RequestMapping(value = "/notice/created3", method = RequestMethod.PUT)
	// /notice/created 경로로 요청한 put 메서드
	public ResponseEntity<Boardlist> delete(@RequestBody Boardlist boardlist,

			@PathVariable Integer id) {

		boardlistService.update(boardlist, id);

		return new ResponseEntity<Boardlist>(boardlist, HttpStatus.OK);

	}

	// 게시판 글 삭제

//	@RequestMapping(value="/delete/{id}", method = RequestMethod.GET)
	@DeleteMapping(value = "/delete/{id}")
	// 기존에 스프링에 내장된 delete가 발동하지 않아 DeletMapping으로 어노테이션을 넣었다

	public ResponseEntity<Void> delete(@PathVariable Integer id) {
		System.out.println("id=======" + id);
		
		boardlistService.delete(id);
		// 지정한 id를 삭제 시킨다
		return new ResponseEntity<Void>(HttpStatus.CREATED);

	}

	/*
	 * @RequestMapping(value = "/{id}", method = RequestMethod.DELETE) public
	 * ResponseEntity<Void> delete(@PathVariable Integer id) {
	 * boardlistService.delete(id); return new
	 * ResponseEntity<Void>(HttpStatus.NO_CONTENT); }
	 */
	
	
	
	
	
	
	
	
	
		

}
