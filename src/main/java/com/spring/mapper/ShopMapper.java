package com.spring.mapper;

import java.util.List;

import com.spring.domain.BoardViewVO;

public interface ShopMapper {
	
	//ī�װ��� ���� ����Ʈ
	public List<BoardViewVO> category(int cateCode);

}
