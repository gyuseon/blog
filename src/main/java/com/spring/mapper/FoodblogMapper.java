package com.spring.mapper;

import com.spring.domain.AuthVO;
import com.spring.domain.ChangePwdVO;
import com.spring.domain.LoginVO;
import com.spring.domain.RegisterVO;

public interface FoodblogMapper {
	
	public AuthVO login(LoginVO login);
	
	public String getPassword(String userid);
	
	public int register(RegisterVO vo);
	
	public int dupId(String userid);
	
	public int updatePwd(ChangePwdVO vo);
	
	public int delete(String userid);
	
	
}
