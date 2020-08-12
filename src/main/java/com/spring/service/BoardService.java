package com.spring.service;

import java.util.List;

import com.spring.domain.BoardVO;
import com.spring.domain.BoardViewVO;
import com.spring.domain.CategoryVO;
import com.spring.domain.Criteria;

public interface BoardService {

	//ī�װ�
	public List<CategoryVO> category();
	
	//������ ���
	public int board(BoardVO vo);
	
	//������ ����Ʈ
	public List<BoardVO> list();
	
	//������ ��ȸ+ī�װ� ����
	public BoardViewVO view(int bnum);
	
	//������ ����
	public void modify(BoardVO vo);
	
	//������ ����
	public void delete(int bnum);
	
	//
	 public List<BoardVO> getList(Criteria cri); 
	 
	 public int total();
		
}
