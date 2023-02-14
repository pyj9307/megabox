package com.finalProject.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

import com.finalProject.dto.BoardDTO;
import com.finalProject.dto.BoardlistDTO;
import com.finalProject.entity.Boardlist;
import com.finalProject.mapper.BoardlistMapper;

import com.finalProject.repository.BoardlistRepository;



@Service

public class BoardlistServiceImpl implements BoardlistService {
	private BoardlistMapper BoardlistMapper; 
	@Override
	public int maxNum() throws Exception {
		return BoardlistMapper.maxNum();
	}//boardMapper에 있는 maxNum


	public void insertData1(BoardlistDTO dto) throws Exception {
		
		BoardlistMapper.insertData(dto);
	
	}

	@Override
	public int getDataCount(String searchKey, String searchValue) throws Exception {
		return BoardlistMapper.getDataCount(searchKey, searchValue);
	} 
	

	@Override
	public List<BoardlistDTO> getLists(int start, int end, String searchKey, String searchValue) throws Exception {
		return BoardlistMapper.getLists(start, end, searchKey, searchValue);
	}

	@Override
	public BoardlistDTO getReadData(int id) throws Exception {
		return BoardlistMapper.getReadData(id);
	}

	@Autowired

	private BoardlistRepository boardlistRepository;

	@Override

	// -----------------------------------------

	// 게시판 리스트 보기, 한페이지에 3개씩

	// curPage:요청하는 페이지, 첫페이지는 0

	// -----------------------------------------

	// 글 작성
	public void create(Boardlist boardlist) {

		boardlistRepository.save(boardlist);

	}

	@Override

	
	// 글 삭제

	public void delete(Integer id) {

		boardlistRepository.deleteById(id);

	}
	
	
	
	
    @Override


    // 글 수정

    public void update(Boardlist boardlist, Integer id) {

              boardlist.setId(id);

              boardlistRepository.save(boardlist);

    }

	/*
	 * paRepository의 findAll() 메소드를 호출만 하면 되는데 페이징 기능을 구현하기 위해 PageRequest를 만들고 이를
	 * findAll() 메소드의 인자로 넣어주면됨
	 */

	public Page<Boardlist> findAll(Integer curPage) {
		// private Sort(Direction direction, List<String> properties) {
		List<String> properties = new ArrayList<String>();
		Order o1 = new Order(Direction.DESC, "reply");
		Order o2 = new Order(Direction.ASC, "replystep");
		PageRequest.of(curPage, 3, Sort.by(Sort.Direction.DESC, "reply").and(Sort.by(Sort.Direction.ASC, "replystep")));
		PageRequest pr = PageRequest.of(curPage, 3,
				Sort.by(Sort.Direction.DESC, "reply").and(Sort.by(Sort.Direction.ASC, "replystep")));
		
		
		
		
//		Sort sort1 = new Sort(o1,o2);
//		Sort sort1 = new Sort(Direction.ASC,properties);
//		PageRequest pr = new PageRequest(curPage, 3, 
//				Sort.by(Sort.Direction.ASC,"ttt"));
//		PageRequest pr = new PageRequest(curPage, 3,
//
//				new Sort(
//
//						new Order(Direction.DESC, "reply"),
//
//						new Order(Direction.ASC, "replystep")));

		return boardlistRepository.findAll(pr);

	}

	@Override
	public void insertData(BoardlistDTO dto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	

}