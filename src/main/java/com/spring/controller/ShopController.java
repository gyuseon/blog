package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.domain.BoardViewVO;
import com.spring.service.ShopService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/foodblog")
public class ShopController {
	
	@Autowired
	private ShopService service;
	
	@GetMapping("/category")
	public void getList(@RequestParam("c") int cateCode,
						@RequestParam("l") int level, Model model) {
		log.info("category");
		
		List<BoardViewVO> list=null;
		list = service.category(cateCode);
		
		model.addAttribute("list",list);
	}

}
