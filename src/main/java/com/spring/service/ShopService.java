package com.spring.service;

import java.util.List;

import com.spring.domain.BoardViewVO;

public interface ShopService {

	
	//ī�װ��� ���� ����Ʈ
	public List<BoardViewVO> category(int cateCode);
}
