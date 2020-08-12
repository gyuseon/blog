package com.spring.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardVO {

	private int bnum;	
	private String bname;		//�����̸� 
	private String catecode;	//ī�װ�
	private String bdes;		//���ļ���
	private String bimg;		//�̹���
	private Date bdate;			//������¥
	private int readcount;		//��ȸ��
	private String cooktime;	//�����ð�
	private String serving;		//���κ�
	private String temperature;	//�����µ�
	private String difficult;	//���̵�
	private String writer;		//�ۼ���
	private String title;		//����
	
	private String thumbimg;	//�����
}
