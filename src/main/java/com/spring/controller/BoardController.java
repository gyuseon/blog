package com.spring.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.BoardVO;
import com.spring.domain.BoardViewVO;
import com.spring.domain.CategoryVO;
import com.spring.domain.Criteria;
import com.spring.domain.PageVO;
import com.spring.service.BoardService;
import com.spring.utils.UploadFileUtils;

import lombok.extern.slf4j.Slf4j;
import net.sf.json.JSONArray;

@Controller
@Slf4j
@RequestMapping("/foodblog")
public class BoardController {

	@Autowired
	private BoardService service;
	
	@Autowired
	private String uploadPath;
	
	@GetMapping("/board2")
	public void board(Model model) {
		log.info("�Խ���");
		
		List<CategoryVO> category =null;
		category = service.category();
		model.addAttribute("category", JSONArray.fromObject(category));
	}
	
	//������ ���
	@PostMapping("/board2")
	public String postboard(BoardVO vo,MultipartFile file) throws IOException, Exception {
		log.info("����"+vo);
		
		 String imgUploadPath = uploadPath + File.separator + "imgUpload";  // �̹����� ���ε��� ������ ���� = /uploadPath/imgUpload
		 String ymdPath = UploadFileUtils.calcPath(imgUploadPath);  // ���� ������ �������� ������ ������ ����
		 String fileName = null;  // �⺻ ��ο� ������ �ۼ��Ǵ� ��� + �����̸�
		   
		 if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
		  // ���� ��ǲ�ڽ��� ÷�ε� ������ ���ٸ�(=÷�ε� ������ �̸��� ���ٸ�)
		  
		  fileName =  UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);

		  // gdsImg�� ���� ���� ��� + ���ϸ� ����
		  vo.setBimg(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		  // gdsThumbImg�� ����� ���� ��� + ����� ���ϸ� ����
		  vo.setThumbimg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		  
		 } else {  // ÷�ε� ������ ������
		  fileName = File.separator + "images" + File.separator + "none.png";
		  // �̸� �غ�� none.png������ ��� �����
		  
		  vo.setBimg(fileName);
		  vo.setThumbimg(fileName);
		 }
		service.board(vo);
		
		return "redirect:/foodblog/boardList";
	}
	
	//������ ����Ʈ
	@GetMapping("/boardList")
	public void boardList(Model model,Criteria cri) {
		log.info("boardList e");
		log.info("pageNum = " + cri.getPageNum());
		log.info("Cri : "+cri.getCateCode());
		//���� �������� ���� �� �Խù�
		 List<BoardVO> list = service.getList(cri); 
		/* List<BoardVO> list = service.list(); */
		model.addAttribute("list",list);
		
		//�ϴ��� ������ ������� ���õ� ����
		model.addAttribute("PageVO", new PageVO(cri, service.total(cri)));
		
		
	}
	
	
	@GetMapping("/view")
	public void view(@RequestParam("n") int bnum, Model model) {
		log.info("view");
		
		BoardViewVO view = service.view(bnum);
		
		model.addAttribute("view",view);
		
	}
	
	
	//������ ����
	@GetMapping("/recipe")
	public void recipe(@RequestParam("n") int bnum, Model model) {
		log.info("recipe");

		BoardViewVO view = service.view(bnum);

		model.addAttribute("view",view);
		
	}
	//������ ����
		@GetMapping("/readcount")
		public String readcount(@RequestParam("n") int bnum, RedirectAttributes rttr) {

			service.readcount(bnum);
			rttr.addAttribute("n", bnum);
			log.info("��ȸ��");
			
			return "redirect:foodblog/recipe";
			
		}
		
	
	
	//������ ����
		@GetMapping("/modify")
		public void modify(@RequestParam("n") int bnum, Model model) {
			log.info("modify");

			BoardViewVO view = service.view(bnum);
			model.addAttribute("view",view);
			
			List<CategoryVO> category = null;
			category = service.category();
			model.addAttribute("category",JSONArray.fromObject(category));
		}
		
	//������ ����
		@PostMapping("/modify")
		public String postmodify(BoardVO vo,@RequestParam("n") int bnum, MultipartFile file, HttpServletRequest req) throws IOException, Exception {
			log.info("���� �Ϸ�");
			
			 // ���ο� ������ ��ϵǾ����� Ȯ��
			 if(file.getOriginalFilename() != null && !file.getOriginalFilename().equals("")) {
			  // ���� ������ ����
			  new File(uploadPath + req.getParameter("bimg")).delete();
			  new File(uploadPath + req.getParameter("thumbimg")).delete();
			  
			  
			  // ���� ÷���� ������ ���
			  String imgUploadPath = uploadPath + File.separator + "imgUpload";
			  String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
			  String fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
			  
			  vo.setBimg(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
			  vo.setThumbimg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
			  
			 
			  
			 } else {  // ���ο� ������ ��ϵ��� �ʾҴٸ�
			  // ���� �̹����� �״�� ���
			  vo.setBimg(req.getParameter("bimg"));
			  vo.setThumbimg(req.getParameter("thumbimg"));
			  
			 }
			
			System.out.println(vo);
			vo.setBnum(bnum);
			service.modify(vo);
			
			return "redirect:/foodblog/boardList";
		}
		
	//������ ����
		@PostMapping("/delete")
		public String postdelete(@RequestParam("n") int bnum) {
			log.info("����");
			
			service.delete(bnum);
			
			return "redirect:/foodblog/boardList";
		}
		
		// ck �����Ϳ��� ���� ���ε�
		@PostMapping("/ckUpload")
		public void postCKEditorImgUpload(HttpServletRequest req, HttpServletResponse res, @RequestParam MultipartFile upload) throws Exception{
		 log.info("post CKEditor img upload");
		 
		 // ���� ���� ����
		 UUID uid = UUID.randomUUID();
		 
		 OutputStream out = null;
		 PrintWriter printWriter = null;
		   
		 // ���ڵ�
		 res.setCharacterEncoding("utf-8");
		 res.setContentType("text/html;charset=utf-8");
		 
		 try {
		  
		  String fileName = upload.getOriginalFilename();  // ���� �̸� ��������
		  byte[] bytes = upload.getBytes();
		  
		  // ���ε� ���
		  String ckUploadPath = uploadPath + File.separator + "ckUpload" + File.separator + uid + "_" + fileName;
		  log.info("���");
		  out = new FileOutputStream(new File(ckUploadPath));
		  out.write(bytes);
		  out.flush();  // out�� ����� �����͸� �����ϰ� �ʱ�ȭ
		  
			/* String callback = req.getParameter("CKEditorFuncNum") */;
		  printWriter = res.getWriter();
		  String fileUrl = "/ckUpload/" + uid + "_" + fileName;  // �ۼ�ȭ��
		  
		  // ���ε�� �޽��� ���
		  printWriter.println("{\"filename\" : \""+fileName+"\", \"uploaded\" : 1, \"url\":\""+fileUrl+"\"}");
		  
		  printWriter.flush();
		  
		 } catch (IOException e) { 
			 e.printStackTrace();
		 } finally {
		  try {
		   if(out != null) { 
			   out.close(); 
			   }
		   if(printWriter != null) {
			   printWriter.close(); 
			   }
		  } catch(IOException e) {
			  e.printStackTrace(); }
		 }
		 return; 
		 
		}
		
		

		
	

	
}
