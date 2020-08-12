package com.spring.service;

import java.util.List;

import com.spring.domain.BoardViewVO;

public interface ShopService {

	
	//카테고리별 음식 리스트
	public List<BoardViewVO> category(int cateCode);
}
