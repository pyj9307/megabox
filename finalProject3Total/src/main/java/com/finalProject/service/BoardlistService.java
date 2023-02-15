package com.finalProject.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.finalProject.dto.BoardDTO;
import com.finalProject.dto.BoardlistDTO;
import com.finalProject.entity.Boardlist;
     //JpaRepository의 findAll() 메소드를 호출만 하면 되는데 페이징 기능을 구현하기 위해 PageRequest를 만들고

     // 이를 findAll() 메소드의 인자로 넣어주면 된다.
public interface BoardlistService {

	/* public int maxNum() throws Exception; */
    
	public int getDataCount(String searchKey, String searchValue) throws Exception;
    // 한페이지에 표시할 데이터
	
	
	/*  원래는 게시판 데이터를 넣기 위하여 작성 하였지만 완벽한 구현을 하지못하요 주석 처리함 
	 * public List<BoardlistDTO> getLists(int start, int end, String searchKey,
	 * String searchValue) throws Exception;
	 */
	
	
   // 보드리스트
	public BoardlistDTO getReadData(int id) throws Exception;
	// 게시판 리스트 보기

	public Page<Boardlist> findAll(Integer curPage);

	// 게시글 작성
	public void create(Boardlist boardlist);
	
	// 글삭제
	public void delete(Integer id);

	// 글 업데이트
	public void update(Boardlist boardlist, Integer id);

	void insertData(BoardlistDTO dto) throws Exception;

	public void updateHitCount(int num);

}