package com.finalProject.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.finalProject.dto.BoardDTO;
import com.finalProject.dto.BoardlistDTO;



@Mapper
public interface BoardlistMapper {
	
	public int maxNum() throws Exception;
	
	public void insertData(BoardlistDTO dto) throws Exception;
	
	public int getDataCount(String searchKey,String searchValue) throws Exception;
	
	public List<BoardlistDTO> getLists(int start,int end,String searchKey,String searchValue) throws Exception;

	public BoardlistDTO getReadData(int num) throws Exception;
	
	public void updateHitCount(int num) throws Exception;
	
	public void updateData(BoardlistDTO dto) throws Exception;
	
	public void deleteData(int num) throws Exception;
	
	
}
