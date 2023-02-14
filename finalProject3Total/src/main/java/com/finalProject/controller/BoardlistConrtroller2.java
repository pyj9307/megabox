package com.finalProject.controller;


import java.net.URLDecoder;

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


import com.finalProject.dto.BoardlistDTO;
import com.finalProject.entity.Boardlist;

import com.finalProject.service.BoardlistService;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;

@RestController

@RequestMapping("/boardlist2")


public class BoardlistConrtroller2 {

	@Autowired

	BoardlistService boardlistService;

	// ---------------------------------------------

	// 루트요청(localhost:8080/board/)시 리스트 보기로

	// ---------------------------------------------

	@RequestMapping(method = RequestMethod.GET)

	public ModelAndView index() {

		// jsp아래 board.jsp 호출

		return new ModelAndView("boardlist2");

	}


	// 게시판 리스트 보기


	@RequestMapping(value = "/{curPage}", method = RequestMethod.GET)

	public ResponseEntity<Page<Boardlist>> list(Model model, Pageable pageable, @PathVariable Integer curPage) {

		Page<Boardlist> page = boardlistService.findAll(curPage);

		return new ResponseEntity<Page<Boardlist>>(page, HttpStatus.OK);

	}



	// 게시판 글 작성

	@RequestMapping(value = "/", method = RequestMethod.POST)

	public ResponseEntity<Void> save(@RequestBody Boardlist boardlist) {

		boardlistService.create(boardlist);

		return new ResponseEntity<Void>(HttpStatus.CREATED);

	}
	

    // 게시판 글 수정
    @RequestMapping(value="/notice/created", method = RequestMethod.PUT)

    public ResponseEntity<Boardlist> delete(@RequestBody Boardlist boardlist,

               @PathVariable Integer id) {                  

              boardlistService.update(boardlist, id);

              return new ResponseEntity<Boardlist>(boardlist, HttpStatus.OK);

    }         
	
	
    
 
	
    
    
    
    
    
    
	

	// 게시판 글 삭제

//	@RequestMapping(value="/delete/{id}", method = RequestMethod.GET)
	@DeleteMapping(value="/delete/{id}")
	
	 public ResponseEntity<Void> delete(@PathVariable Integer id) {
		System.out.println("id======="+id);
	 boardlistService.delete(id);
	 return new ResponseEntity<Void>(HttpStatus.CREATED);

	 }
	
	
	

	
		/*
		 * @RequestMapping(value = "/{id}", method = RequestMethod.DELETE) public
		 * ResponseEntity<Void> delete(@PathVariable Integer id) {
		 * boardlistService.delete(id); return new
		 * ResponseEntity<Void>(HttpStatus.NO_CONTENT); }
		 */

	 
	
}



