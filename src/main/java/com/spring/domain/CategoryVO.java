package com.spring.domain;

import lombok.Data;

@Data
public class CategoryVO {

	private String cateName;
	private String cateCode;
	private String cateCodeRef;
	private int level;
	
	private String type; //�˻�����
	private String keyword; //�˻���
	
	public String[] getTypeArr() {
		return type == null? new String[]{}:type.split("");
	}
	
}
