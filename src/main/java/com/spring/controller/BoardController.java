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
		log.info("게시판");
		
		List<CategoryVO> category =null;
		category = service.category();
		model.addAttribute("category", JSONArray.fromObject(category));
	}
	
	//레시피 등록
	@PostMapping("/board2")
	public String postboard(BoardVO vo,MultipartFile file) throws IOException, Exception {
		log.info("정보"+vo);
		
		 String imgUploadPath = uploadPath + File.separator + "imgUpload";  // 이미지를 업로드할 폴더를 설정 = /uploadPath/imgUpload
		 String ymdPath = UploadFileUtils.calcPath(imgUploadPath);  // 위의 폴더를 기준으로 연월일 폴더를 생성
		 String fileName = null;  // 기본 경로와 별개로 작성되는 경로 + 파일이름
		   
		 if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
		  // 파일 인풋박스에 첨부된 파일이 없다면(=첨부된 파일이 이름이 없다면)
		  
		  fileName =  UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);

		  // gdsImg에 원본 파일 경로 + 파일명 저장
		  vo.setBimg(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		  // gdsThumbImg에 썸네일 파일 경로 + 썸네일 파일명 저장
		  vo.setThumbimg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		  
		 } else {  // 첨부된 파일이 없으면
		  fileName = File.separator + "images" + File.separator + "none.png";
		  // 미리 준비된 none.png파일을 대신 출력함
		  
		  vo.setBimg(fileName);
		  vo.setThumbimg(fileName);
		 }
		service.board(vo);
		
		return "redirect:/foodblog/boardList";
	}
	
	//레시피 리스트
	@GetMapping("/boardList")
	public void boardList(Model model,Criteria cri) {
		log.info("boardList e");
		log.info("pageNum = " + cri.getPageNum());
		log.info("Cri : "+cri.getCateCode());
		//현재 페이지에 보여 줄 게시물
		 List<BoardVO> list = service.getList(cri); 
		/* List<BoardVO> list = service.list(); */
		model.addAttribute("list",list);
		
		//하단의 페이지 나누기와 관련된 정보
		model.addAttribute("PageVO", new PageVO(cri, service.total(cri)));
		
		
	}
	
	
	@GetMapping("/view")
	public void view(@RequestParam("n") int bnum, Model model) {
		log.info("view");
		
		BoardViewVO view = service.view(bnum);
		
		model.addAttribute("view",view);
		
	}
	
	
	//레시피 보기
	@GetMapping("/recipe")
	public void recipe(@RequestParam("n") int bnum, Model model) {
		log.info("recipe");

		BoardViewVO view = service.view(bnum);

		model.addAttribute("view",view);
		
	}
	//레시피 보기
		@GetMapping("/readcount")
		public String readcount(@RequestParam("n") int bnum, RedirectAttributes rttr) {

			service.readcount(bnum);
			rttr.addAttribute("n", bnum);
			log.info("조회수");
			
			return "redirect:foodblog/recipe";
			
		}
		
	
	
	//레시피 수정
		@GetMapping("/modify")
		public void modify(@RequestParam("n") int bnum, Model model) {
			log.info("modify");

			BoardViewVO view = service.view(bnum);
			model.addAttribute("view",view);
			
			List<CategoryVO> category = null;
			category = service.category();
			model.addAttribute("category",JSONArray.fromObject(category));
		}
		
	//레시피 수정
		@PostMapping("/modify")
		public String postmodify(BoardVO vo,@RequestParam("n") int bnum, MultipartFile file, HttpServletRequest req) throws IOException, Exception {
			log.info("수정 완료");
			
			 // 새로운 파일이 등록되었는지 확인
			 if(file.getOriginalFilename() != null && !file.getOriginalFilename().equals("")) {
			  // 기존 파일을 삭제
			  new File(uploadPath + req.getParameter("bimg")).delete();
			  new File(uploadPath + req.getParameter("thumbimg")).delete();
			  
			  
			  // 새로 첨부한 파일을 등록
			  String imgUploadPath = uploadPath + File.separator + "imgUpload";
			  String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
			  String fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
			  
			  vo.setBimg(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
			  vo.setThumbimg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
			  
			 
			  
			 } else {  // 새로운 파일이 등록되지 않았다면
			  // 기존 이미지를 그대로 사용
			  vo.setBimg(req.getParameter("bimg"));
			  vo.setThumbimg(req.getParameter("thumbimg"));
			  
			 }
			
			System.out.println(vo);
			vo.setBnum(bnum);
			service.modify(vo);
			
			return "redirect:/foodblog/boardList";
		}
		
	//레시피 삭제
		@PostMapping("/delete")
		public String postdelete(@RequestParam("n") int bnum) {
			log.info("삭제");
			
			service.delete(bnum);
			
			return "redirect:/foodblog/boardList";
		}
		
		// ck 에디터에서 파일 업로드
		@PostMapping("/ckUpload")
		public void postCKEditorImgUpload(HttpServletRequest req, HttpServletResponse res, @RequestParam MultipartFile upload) throws Exception{
		 log.info("post CKEditor img upload");
		 
		 // 랜덤 문자 생성
		 UUID uid = UUID.randomUUID();
		 
		 OutputStream out = null;
		 PrintWriter printWriter = null;
		   
		 // 인코딩
		 res.setCharacterEncoding("utf-8");
		 res.setContentType("text/html;charset=utf-8");
		 
		 try {
		  
		  String fileName = upload.getOriginalFilename();  // 파일 이름 가져오기
		  byte[] bytes = upload.getBytes();
		  
		  // 업로드 경로
		  String ckUploadPath = uploadPath + File.separator + "ckUpload" + File.separator + uid + "_" + fileName;
		  log.info("경로");
		  out = new FileOutputStream(new File(ckUploadPath));
		  out.write(bytes);
		  out.flush();  // out에 저장된 데이터를 전송하고 초기화
		  
			/* String callback = req.getParameter("CKEditorFuncNum") */;
		  printWriter = res.getWriter();
		  String fileUrl = "/ckUpload/" + uid + "_" + fileName;  // 작성화면
		  
		  // 업로드시 메시지 출력
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
