package com.spring.domain;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class Criteria {

	private int pageNum; 	//페이지번호
	private int amount; 	//한 페이지 당 보여줄 게시물 수
	private String cateCode;
	
	private String type;
	
	public Criteria() {
		this.pageNum = 1;
		this.amount = 10;
		this.cateCode = "";
	}

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	
	
}
