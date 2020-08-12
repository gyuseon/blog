package com.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.AuthVO;
import com.spring.domain.ChangePwdVO;
import com.spring.domain.LoginVO;
import com.spring.domain.RegisterVO;
import com.spring.service.FoodblogService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/foodblog")
public class MemberController {
	
	@Autowired
	private FoodblogService service;
	
	
	@GetMapping("/index")
	public void main() {
		log.info("메인 화면 열기");
	}
	
	
	
	@GetMapping("/login")
	public void loginForm() {
		log.info("로그인 폼 요청");
	}
	
	@PostMapping("/login")
	public String loginPost(LoginVO login,HttpSession session) {
		log.info("login "+login);
		
		//login.jsp에서 넘긴 값 가져오기
		log.info("userid : "+ login.getUserid());
		log.info("password : "+login.getPassword());
		
		//로그인 확인=> 성공시 index.jsp / 실패 로그인 페이지
			
		AuthVO auth =service.login(login);	
		if(auth!=null) {
			//세션에 값 담기
			session.setAttribute("auth", auth);
			return "redirect:/";
		}else {
			return "/foodblog/login";
		}
	}
	

	
	//로그아웃 => 세션 해제 후 인덱스 페이지 보여주기
		@GetMapping("/logout") //http://localhost:8080/member/logout
		public String logout(HttpSession session) {
			log.info("로그아웃");
			
			//세션에 있는 모든 정보 삭제
			session.invalidate();
			//세션에 있는 특정한 정보 삭제
			//session.removeAttribute("auth");			
			
			return "redirect:/";
		}
		
	
		//비밀번호 변경 폼을 보여주는 컨트롤러 생성
		@GetMapping("/changePwd")
		public void changePwd() {
			log.info("비밀번호 변경");
		}
		
		@PutMapping("/changePwd")
		@ResponseBody
		public ResponseEntity<String> update(@RequestBody ChangePwdVO changePwd,HttpSession session){
			log.info("비밀번호 수정 :"+changePwd);
			
			// 1. userid 알아내기
			AuthVO auth=(AuthVO) session.getAttribute("auth");
			// 2. 아이디를 보내 현재 비밀번호 추출
			String current_password = service.getPwd(auth.getUserid());
			// 3. 사용자가 입력한 현재 비밀번호와 일치하는지 확인
			if(current_password.equals(changePwd.getPassword())) {
				//일치한다면 수정작업 시작
				//new_password와 confirm_password가 일치하는지 확인
				if(changePwd.newPasswordEqualsConfirm()) {
					//userid 담아주기
					changePwd.setUserid(auth.getUserid());
					if(service.updatePwd(changePwd)) {
						//수정작업이 성공하면 세션해제 후 로그인 페이지로 이동
						session.removeAttribute("auth");
						return new ResponseEntity<String>("success",HttpStatus.OK);
						}
				}
				}
				return new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
			
		}
	

	
	@GetMapping("/register")
	public void registerForm() {
		log.info("회원가입 창 이동");
	}
	
	
	@PostMapping("/register")
	public String insert(@ModelAttribute("vo") RegisterVO register) {
		log.info("로그인");
		
		log.info("userid:"+register.getUserid());
		log.info("password:"+register.getPassword());
		log.info("confirm_password"+register.getConfirm_password());
		log.info("username"+register.getUsername());
		log.info("email"+register.getEmail());
		
		// register -> catch에서 register가 null이 걸리도록.
		// 그러면 catch에서 회원가입 페이지로 다시 돌아가도록
		
			if(register.isPasswordEqualToConfirmPassword()) {
				
				
			if(service.regist(register)) {
					log.info("회원가입 성공");	
					return "/foodblog/login";
			}else {
				return "/foodblog/register";
			}
		}else {
				//회원가입 페이지로 돌려보내기
				return "/foodblog/register";
		}
	}
	
	
//	@PostMapping("/checkId")
//	@ResponseBody //컨트롤러에서 던지는 값이 jsp값이 아님을 의미
//	public String checkId(String userid) {
//		log.info("중복 아이디 검사 : "+userid);
//	if(service.dupId(userid)) {
//		return "ture";
//	}else {
//		return "false";
//	}
//	
//	}
	
	@GetMapping("/dupId")
	public ResponseEntity<String> dupId(String userid) {
		log.info(""+userid);
		
		if(service.dupId(userid)) {
			log.info("검색값 있음");
			return new ResponseEntity<String> ("fail", HttpStatus.OK);
		}
		log.info("없음");
		
		return new ResponseEntity<String> ("success", HttpStatus.OK);
	}
	
	
	//회원탈퇴 버튼을 클릭시 leave 보여주기
		@GetMapping("/leave")
		public void leave() {
			log.info("탈퇴");
		}
		
		@DeleteMapping("/leave")
		@ResponseBody
		public ResponseEntity<String> leaveDelete(@RequestBody LoginVO vo,HttpSession session) {
			log.info("회원탈퇴" + vo);
			
			//userid와 일치하는 비밀번호 추출
			String password = service.getPwd(vo.getUserid());
			
			if(password.equals(vo.getPassword())) {
				//일치한다면 삭제작업 시작
				if(service.delete(vo.getUserid())) {				
					session.removeAttribute("auth");	
					return new ResponseEntity<String>("success",HttpStatus.OK);					
				}
			}		
			return new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST); 		
		}

}
