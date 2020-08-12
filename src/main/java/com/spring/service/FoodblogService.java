package com.spring.service;

import com.spring.domain.AuthVO;
import com.spring.domain.ChangePwdVO;
import com.spring.domain.LoginVO;
import com.spring.domain.RegisterVO;


public interface FoodblogService {

	public AuthVO login(LoginVO login);
	
	//비밀번호 추출
	public String getPwd(String userid);
	
	//비밀번호 변경
	public boolean updatePwd(ChangePwdVO vo);
	
	public boolean regist(RegisterVO vo);

	public boolean dupId(String userid);
	
	//회원탈퇴
	public boolean delete(String userid);

	
}
