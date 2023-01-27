package com.zerock.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.zerock.domain.Criteria;
import com.zerock.domain.PageDTO;
import com.zerock.domain.QNAVO;
import com.zerock.service.FAQService;
import com.zerock.service.NoticeService;
import com.zerock.service.QNAService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/customerService/*")
public class CustomerController {
	
	@Setter(onMethod_= @Autowired)
	private NoticeService notice;
	
	@Setter(onMethod_= @Autowired)
	private QNAService qna;
	
	@Setter(onMethod_= @Autowired)
	private FAQService faq;

	
	
	// 공지사항 전체 목록 보여주기
	@GetMapping("/notice")
	public String customerService(Model model) {
		log.info("notice list....");
		model.addAttribute("list", notice.getList());
		
		return "/customerService/notice";
	}
	
	// 자주하는 질문(faq) 전체 목록 보여주기
	@GetMapping("/faq")
	public String faq(Model model) {
		log.info("faq list...");
		model.addAttribute("list", faq.faqGetList());
		
		return "/customerService/faq";
	}
	
	// 문의하기(qna) 전체 목록 보여주기
//	@GetMapping("/qna")
//	public String qnaBoard(Model model) {
//		log.info("qna list....");
//		model.addAttribute("list", qna.getList());
//		
//		return "/customerService/qna";
//	}
	
	// 문의하기(qna) 전체 목록 보여주기 + 페이지처리
//	@GetMapping("/qna")
//	public void list(Criteria cri, Model model) {
//		log.info("list : " + cri);
//		model.addAttribute("list", qna.getList(cri));
//		model.addAttribute("pageMaker", new PageDTO(cri, 123));
//	}
	
	// 문의하기(qna) 전체 목록 보여주기 + 페이지처리 + 전체 글 가져오기
	@GetMapping("/qna")
	public void list(Criteria cri, Model model) {
		log.info("list : " + cri);
		model.addAttribute("list", qna.getList(cri));
		// model.addAttribute("pageMaker", new PageDTO(cri, 123));
		
		int total = qna.getTotal(cri);
		log.info("total:" + total);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}

	
	// 문의하기(qna) 글쓰기 폼 띄우기
	@GetMapping("/register")
	public void register() {
		
	}
	
	// 문의하기(qna) 글쓰고 반영되게
	@PostMapping("/register")
	public String register(QNAVO vo, RedirectAttributes rttr) {
		log.info("register..." + vo);
		qna.register(vo);
		
		rttr.addFlashAttribute("result", vo.getBno());
		
		return "redirect:/customerService/qna";
	}
	
	// 문의하기(qna) 게시글 읽기 + 수정하기 버튼
	@GetMapping({"/get", "/modify"})
	public void get(@RequestParam("bno") Long bno, @ModelAttribute("cri") Criteria cri, Model model) {
		log.info("/get or modify");
		model.addAttribute("board", qna.get(bno));
	}
	
	// 문의하기(qna) 게시글 수정 처리
	@PostMapping("/modify")
	public String modify(QNAVO vo, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("modify...:" + vo);
		if(qna.modify(vo)) {
			rttr.addAttribute("result", "success");
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/customerService/qna";
	}
	
	// 문의하기(qna) 게시글 삭제 처리
	@PostMapping("/remove")
	public String remove(@RequestParam("bno") Long bno, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("remove : " + bno);
		if(qna.remove(bno)) {
			rttr.addFlashAttribute("result", "success");
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/customerService/qna";
	}

	

}
