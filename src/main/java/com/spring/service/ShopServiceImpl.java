package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.BoardViewVO;
import com.spring.domain.Criteria;
import com.spring.mapper.ShopMapper;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class ShopServiceImpl implements ShopService {

	@Autowired
	private ShopMapper mapper;

	
	
	  @Override 
	  public List<BoardViewVO> category(int cateCode, int level) {
	  
	  int cateCodeRef=0;
	  
	
	  
	  System.out.println("level =======" + level);
	  if(level==1) {
		   cateCodeRef=cateCode;    
	  
		  return mapper.category_1(cateCode, cateCodeRef);
	  }else {
	  
	  return mapper.category_2(cateCode); 
	  
	  }

	  }



	@Override
	public List<BoardViewVO> selectAll(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.selectAll(cri);
	}



	@Override
	public int total(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.total(cri);
		}

	

}
