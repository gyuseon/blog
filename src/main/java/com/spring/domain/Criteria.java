package com.spring.domain;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class Criteria {

	private int pageNum; 	//��������ȣ
	private int amount; 	//�� ������ �� ������ �Խù� ��
	
	private String type; //�˻�����
	private String keyword; //�˻���
	
	public Criteria() {
		this(1,10);
	}

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	// type ���� �޾Ƽ� �迭�� ����
		// type : T{"T"}, C{"C"}, W{"W"}, TC{"T","C"}, TW{"T","W"}, TCW {"T","C","W"}
		public String[] getTypeArr() {
			return type == null? new String[]{}:type.split("");
		}
}
