package com.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.zerock.domain.ReplyVO;
import com.zerock.mapper.QNAReplyMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@AllArgsConstructor
@Log4j
@Service
public class QNAReplyServiceImpl implements QNAReplyService {
	
	private QNAReplyMapper mapper;

	// 댓글 작성
	@Override
	public void insert(ReplyVO reply) {
		log.info("insert Reply...");
		mapper.insert(reply);
	}

	// 댓글 목록 보여주기
	@Override
	public List<ReplyVO> getList(Long bno) {
		log.info("Reply List...");
		return mapper.list(bno);
	}

	// 댓글 삭제
	@Override
	public int deleteReply(ReplyVO reply) {
		log.info("Delete Reply....");
		return mapper.deleteReply(reply);
	}

	// 댓글 삭제 시 아이디 체크
	@Override
	public String replyIdCheck(Long rno) {
		log.info("Id Check...");
		return mapper.replyIdCheck(rno);
	}

}
