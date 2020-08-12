package com.spring.mapper;

import java.util.List;

import com.spring.domain.BoardViewVO;

public interface ShopMapper {
	
	//카테고리별 음식 리스트
	public List<BoardViewVO> category(int cateCode);

}
