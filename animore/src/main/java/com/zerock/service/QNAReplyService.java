package com.zerock.service;


import java.util.List;

import com.zerock.domain.ReplyVO;

public interface QNAReplyService {

	// 댓글 등록
	public void insert(ReplyVO reply);
	
	// 댓글 목록
	public List<ReplyVO> getList(Long bno);
	
	// 댓글 삭제
	public int deleteReply(ReplyVO reply);
	
	// 댓글 삭제 시 아이디 체크
	public String replyIdCheck(Long rno);
}
