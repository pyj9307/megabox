package com.finalProject.service;

import java.util.List;

import com.finalProject.dto.BoardDTO2;



public interface BoardService2 {

	public int maxNum() throws Exception;

	// BoardService와 구분되도록 insertData2로 변경
	public void insertData2(BoardDTO2 dto) throws Exception;
	
	public int getDataCount(String searchKey,String searchValue) throws Exception;
	
	public List<BoardDTO2> getLists(int start,int end,String searchKey,String searchValue) throws Exception;

	
	public BoardDTO2 getReadData(int num) throws Exception;
	
	public void updateHitCount(int num) throws Exception;
	
	public void updateData(BoardDTO2 dto) throws Exception;
	
	public void deleteData(int num) throws Exception;
}
