package com.spring.service;

import java.util.List;

import com.spring.domain.BoardViewVO;
import com.spring.domain.Criteria;

public interface ShopService {

	
	  //카테고리별 음식 리스트 1차 분류 
	 public List<BoardViewVO> category(int cateCode, int level);
	  
	 public List<BoardViewVO> selectAll(Criteria cri);
	
	 public int total(Criteria cri);
	 
}
