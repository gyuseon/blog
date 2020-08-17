package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.domain.BoardVO;
import com.spring.domain.BoardViewVO;
import com.spring.domain.CategoryVO;
import com.spring.domain.Criteria;
import com.spring.domain.PageVO;
import com.spring.service.BoardService;
import com.spring.service.ShopService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/foodblog")
public class ShopController {
	
	@Autowired
	private ShopService service;
	
	@Autowired
	private BoardService service1;
	
	@GetMapping("/category")
//	public void getList(@RequestParam("c") int cateCode,
//						@RequestParam("l") int level, Model model,Criteria cri) {
	public void getList(CategoryVO cate, Model model,@ModelAttribute("cri") Criteria cri ) {
		log.info("category");
		
		log.info("cateCode =========" + cate);
		
		log.info("list cri : " +cri);
		
		List<BoardViewVO> list = service.selectAll(cri);
		model.addAttribute("list",list);
		
		
		
		
		
		//List<BoardViewVO> list=null;
		//list =  service.category(Integer.parseInt(cate.getCateCode()), cate.getLevel());
		//model.addAttribute("list",list);
		//model.addAttribute("category", cate);
		
		
		 
		//현재 페이지에 보여 줄 게시물
		 //List<BoardViewVO> list1 = service.selectAll2(cri);
		 //model.addAttribute("list",list1);
		 
		//하단의 페이지 나누기와 관련된 정보
		model.addAttribute("PageVO", new PageVO(cri, service1.total(cri)));
		
	}

}
