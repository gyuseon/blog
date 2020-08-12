package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.BoardViewVO;
import com.spring.mapper.ShopMapper;

@Service
public class ShopServiceImpl implements ShopService {

	@Autowired
	private ShopMapper mapper;
	
	@Override
	public List<BoardViewVO> category(int cateCode) {

		return mapper.category(cateCode);
	}

}
