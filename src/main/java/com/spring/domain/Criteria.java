package com.spring.domain;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class Criteria {

	private int pageNum; 	//��������ȣ
	private int amount; 	//�� ������ �� ������ �Խù� ��
	private String cateCode;
	
	public Criteria() {
		this.pageNum = 1;
		this.amount = 10;
		this.cateCode = "100";
	}

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
}
