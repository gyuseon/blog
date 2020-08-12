package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.AuthVO;
import com.spring.domain.ChangePwdVO;
import com.spring.domain.LoginVO;
import com.spring.domain.RegisterVO;
import com.spring.mapper.FoodblogMapper;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class FoodblogServiceImpl implements FoodblogService {

	@Autowired
	private FoodblogMapper mapper;


	@Override
	public AuthVO login(LoginVO login) {
		
		return mapper.login(login);
	}

	@Override
	public String getPwd(String userid) {
		
		return mapper.getPassword(userid);
	}
	
	@Override
	public boolean updatePwd(ChangePwdVO vo) {

		return mapper.updatePwd(vo)==1 ? true:false;
	}
	
	
	@Override
	public boolean regist(RegisterVO vo) {
		log.info("회원가입 서비스 호출");
		return mapper.register(vo) > 0?true:false;
	}
	
	@Override
	public boolean dupId(String userid) {
		return mapper.dupId(userid) > 0? true:false;
	}
	
	@Override
	public boolean delete(String userid) {
		// TODO Auto-generated method stub
		return mapper.delete(userid)==1 ? true:false;
	}
	

}
