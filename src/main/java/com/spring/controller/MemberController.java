package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/foodblog")
public class MemberController {
	
	@GetMapping("/login")
	public void loginForm() {
		log.info("로그인 폼 요청");
	}
	
	@GetMapping("/register")
	public void registerForm() {
		log.info("회원가입 창 이동");
	}

}
