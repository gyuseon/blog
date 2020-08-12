package com.spring.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardVO {

	private int bnum;	
	private String bname;		//음식이름 
	private String catecode;	//카테고리
	private String bdes;		//음식설명
	private String bimg;		//이미지
	private Date bdate;			//생성날짜
	private int readcount;		//조회수
	private String cooktime;	//조리시간
	private String serving;		//몇인분
	private String temperature;	//조리온도
	private String difficult;	//난이도
	private String writer;		//작성자
	private String title;		//제목
	
	private String thumbimg;	//썸네일
}
