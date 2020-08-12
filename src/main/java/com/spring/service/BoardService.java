package com.spring.service;

import java.util.List;

import com.spring.domain.BoardVO;
import com.spring.domain.BoardViewVO;
import com.spring.domain.CategoryVO;
import com.spring.domain.Criteria;

public interface BoardService {

	//카테고리
	public List<CategoryVO> category();
	
	//레시피 등록
	public int board(BoardVO vo);
	
	//레시피 리스트
	public List<BoardVO> list();
	
	//레시피 조회+카테고리 조인
	public BoardViewVO view(int bnum);
	
	//레시피 수정
	public void modify(BoardVO vo);
	
	//레시피 삭제
	public void delete(int bnum);
	
	//
	 public List<BoardVO> getList(Criteria cri); 
	 
	 public int total();
		
}
