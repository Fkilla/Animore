package com.zerock.mapper;

import java.util.List;

import com.zerock.domain.ReplyVO;

public interface QNAReplyMapper {

	// 댓글 작성
	public void insert(ReplyVO reply);

	// 댓글 목록
	public List<ReplyVO> list(Long bno);
	
	// 댓글 삭제
	public int deleteReply(ReplyVO reply);
	
	// 댓글 삭제 시 아이디 체크
	public String replyIdCheck(Long rno);
	
	// 댓글 수정
	public void modifyReply(ReplyVO reply);
}
