package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.BoardVO;
import com.spring.domain.BoardViewVO;
import com.spring.domain.CategoryVO;
import com.spring.domain.Criteria;
import com.spring.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper mapper;
	
	@Override
	public List<CategoryVO> category() {
		
		return mapper.category();
	}

	@Override
	public int board(BoardVO vo) {
		return mapper.board(vo);
		
	}

	@Override
	public List<BoardVO> list() {
		return mapper.list();
	}

	@Override
	public BoardViewVO view(int bnum) {
		return mapper.view(bnum);
	}

	@Override
	public void modify(BoardVO vo) {
		mapper.modify(vo);
		
	}


	
	 @Override 
	 public List<BoardVO> getList(Criteria cri) {
	 
	 return mapper.selectAll(cri); 
	 }


	@Override
	public int total(Criteria cri) {

		return mapper.total(cri);
	}

	@Override
	public int readcount(int bnum) {
		return mapper.readcount(bnum);
	}

	@Override
	public boolean delete(int bnum) {
		
		return mapper.delete(bnum) > 0 ? true:false;
	}
}
