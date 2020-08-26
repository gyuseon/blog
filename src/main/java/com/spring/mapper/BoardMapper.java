package com.spring.mapper;

import java.util.List;

import com.spring.domain.BoardVO;
import com.spring.domain.BoardViewVO;
import com.spring.domain.CategoryVO;
import com.spring.domain.Criteria;

public interface BoardMapper {

	//카테고리
	public List<CategoryVO> category();
	
	//레시피 등록
	public int board(BoardVO vo);
	
	//레시피 리스트
	public List<BoardVO> list();
	
	//레시피 조회+ 카테고리 조인
	public BoardViewVO view(int bnum);
	
	//레시피 수정
	public void modify(BoardVO vo);
	
	//레시피 삭제
	public int delete(int bnum);
	
	//
	public List<BoardVO> selectAll(Criteria cri); 
	
	public int total(Criteria cri);
	
	//조회수
	public int readcount(int bnum);


}
