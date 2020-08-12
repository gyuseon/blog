package com.spring.service;

import com.spring.domain.AuthVO;
import com.spring.domain.ChangePwdVO;
import com.spring.domain.LoginVO;
import com.spring.domain.RegisterVO;


public interface FoodblogService {

	public AuthVO login(LoginVO login);
	
	//��й�ȣ ����
	public String getPwd(String userid);
	
	//��й�ȣ ����
	public boolean updatePwd(ChangePwdVO vo);
	
	public boolean regist(RegisterVO vo);

	public boolean dupId(String userid);
	
	//ȸ��Ż��
	public boolean delete(String userid);

	
}
