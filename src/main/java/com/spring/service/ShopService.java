package com.spring.service;

import java.util.List;

import com.spring.domain.BoardViewVO;
import com.spring.domain.Criteria;

public interface ShopService {

	
	  //ī�װ��� ���� ����Ʈ 1�� �з� 
	 public List<BoardViewVO> category(int cateCode, int level);
	  
	 public List<BoardViewVO> selectAll(Criteria cri);
	
	 public int total(Criteria cri);
	 
}
