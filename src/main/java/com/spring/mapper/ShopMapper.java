package com.spring.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.BoardVO;
import com.spring.domain.BoardViewVO;
import com.spring.domain.Criteria;

public interface ShopMapper {

	
	  //ī�װ��� ���� ����Ʈ 1�� �з� 
		public List<BoardViewVO> category_1(@Param("cateCode") int cateCode,@Param("cateCodeRef") int cateCodeRef);
	  
	  
	  //ī�װ��� ���� ����Ʈ 2�� �з�
		public List<BoardViewVO> category_2(int cateCode);
	 
		public List<BoardViewVO> selectAll(Criteria cri); 
		
		public int total(Criteria cri);
		
		

}
