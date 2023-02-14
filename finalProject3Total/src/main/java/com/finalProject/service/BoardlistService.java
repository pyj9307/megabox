package com.finalProject.service;

import java.util.List;

import org.springframework.data.domain.Page;


import com.finalProject.dto.BoardlistDTO;
import com.finalProject.entity.Boardlist;

public interface BoardlistService {

	public int maxNum() throws Exception;

	

	public int getDataCount(String searchKey, String searchValue) throws Exception;

	public List<BoardlistDTO> getLists(int start, int end, String searchKey, String searchValue) throws Exception;

	public BoardlistDTO getReadData(int id) throws Exception;
	// 게시판 리스트 보기

	public Page<Boardlist> findAll(Integer curPage);

	// 게시글 작성
	public void create(Boardlist boardlist);
	// 글삭제

	public void delete(Integer id);

	public void update(Boardlist boardlist, Integer id);

	



	void insertData(BoardlistDTO dto) throws Exception;




}