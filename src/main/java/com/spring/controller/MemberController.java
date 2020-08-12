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
		log.info("���� ȭ�� ����");
	}
	
	
	
	@GetMapping("/login")
	public void loginForm() {
		log.info("�α��� �� ��û");
	}
	
	@PostMapping("/login")
	public String loginPost(LoginVO login,HttpSession session) {
		log.info("login "+login);
		
		//login.jsp���� �ѱ� �� ��������
		log.info("userid : "+ login.getUserid());
		log.info("password : "+login.getPassword());
		
		//�α��� Ȯ��=> ������ index.jsp / ���� �α��� ������
			
		AuthVO auth =service.login(login);	
		if(auth!=null) {
			//���ǿ� �� ���
			session.setAttribute("auth", auth);
			return "redirect:/";
		}else {
			return "/foodblog/login";
		}
	}
	

	
	//�α׾ƿ� => ���� ���� �� �ε��� ������ �����ֱ�
		@GetMapping("/logout") //http://localhost:8080/member/logout
		public String logout(HttpSession session) {
			log.info("�α׾ƿ�");
			
			//���ǿ� �ִ� ��� ���� ����
			session.invalidate();
			//���ǿ� �ִ� Ư���� ���� ����
			//session.removeAttribute("auth");			
			
			return "redirect:/";
		}
		
	
		//��й�ȣ ���� ���� �����ִ� ��Ʈ�ѷ� ����
		@GetMapping("/changePwd")
		public void changePwd() {
			log.info("��й�ȣ ����");
		}
		
		@PutMapping("/changePwd")
		@ResponseBody
		public ResponseEntity<String> update(@RequestBody ChangePwdVO changePwd,HttpSession session){
			log.info("��й�ȣ ���� :"+changePwd);
			
			// 1. userid �˾Ƴ���
			AuthVO auth=(AuthVO) session.getAttribute("auth");
			// 2. ���̵� ���� ���� ��й�ȣ ����
			String current_password = service.getPwd(auth.getUserid());
			// 3. ����ڰ� �Է��� ���� ��й�ȣ�� ��ġ�ϴ��� Ȯ��
			if(current_password.equals(changePwd.getPassword())) {
				//��ġ�Ѵٸ� �����۾� ����
				//new_password�� confirm_password�� ��ġ�ϴ��� Ȯ��
				if(changePwd.newPasswordEqualsConfirm()) {
					//userid ����ֱ�
					changePwd.setUserid(auth.getUserid());
					if(service.updatePwd(changePwd)) {
						//�����۾��� �����ϸ� �������� �� �α��� �������� �̵�
						session.removeAttribute("auth");
						return new ResponseEntity<String>("success",HttpStatus.OK);
						}
				}
				}
				return new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
			
		}
	

	
	@GetMapping("/register")
	public void registerForm() {
		log.info("ȸ������ â �̵�");
	}
	
	
	@PostMapping("/register")
	public String insert(@ModelAttribute("vo") RegisterVO register) {
		log.info("�α���");
		
		log.info("userid:"+register.getUserid());
		log.info("password:"+register.getPassword());
		log.info("confirm_password"+register.getConfirm_password());
		log.info("username"+register.getUsername());
		log.info("email"+register.getEmail());
		
		// register -> catch���� register�� null�� �ɸ�����.
		// �׷��� catch���� ȸ������ �������� �ٽ� ���ư�����
		
			if(register.isPasswordEqualToConfirmPassword()) {
				
				
			if(service.regist(register)) {
					log.info("ȸ������ ����");	
					return "/foodblog/login";
			}else {
				return "/foodblog/register";
			}
		}else {
				//ȸ������ �������� ����������
				return "/foodblog/register";
		}
	}
	
	
//	@PostMapping("/checkId")
//	@ResponseBody //��Ʈ�ѷ����� ������ ���� jsp���� �ƴ��� �ǹ�
//	public String checkId(String userid) {
//		log.info("�ߺ� ���̵� �˻� : "+userid);
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
			log.info("�˻��� ����");
			return new ResponseEntity<String> ("fail", HttpStatus.OK);
		}
		log.info("����");
		
		return new ResponseEntity<String> ("success", HttpStatus.OK);
	}
	
	
	//ȸ��Ż�� ��ư�� Ŭ���� leave �����ֱ�
		@GetMapping("/leave")
		public void leave() {
			log.info("Ż��");
		}
		
		@DeleteMapping("/leave")
		@ResponseBody
		public ResponseEntity<String> leaveDelete(@RequestBody LoginVO vo,HttpSession session) {
			log.info("ȸ��Ż��" + vo);
			
			//userid�� ��ġ�ϴ� ��й�ȣ ����
			String password = service.getPwd(vo.getUserid());
			
			if(password.equals(vo.getPassword())) {
				//��ġ�Ѵٸ� �����۾� ����
				if(service.delete(vo.getUserid())) {				
					session.removeAttribute("auth");	
					return new ResponseEntity<String>("success",HttpStatus.OK);					
				}
			}		
			return new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST); 		
		}

}
