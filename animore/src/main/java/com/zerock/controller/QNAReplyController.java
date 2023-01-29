package com.zerock.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//import com.zerock.domain.QNAVO;
//import com.zerock.domain.ReplyVO;
//import com.zerock.service.QNAReplyService;
//
//import lombok.AllArgsConstructor;
//import lombok.Setter;
//import lombok.extern.log4j.Log4j;
//
//@Controller
//@Log4j
//@RequestMapping("/customerService/*")
//public class QNAReplyController {
//	
//	@Setter(onMethod_= @Autowired)
//	private QNAReplyService qnaReply;
//	
//	@RequestMapping(value = "/get", method = RequestMethod.POST)
//	public String registerReply(ReplyVO reply) {
//		qnaReply.registerReply(reply);
//		return "redirect:/customerService/get?bno=" + reply.getBno();
//	}
//}
