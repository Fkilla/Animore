package com.zerock.mapper;

import java.util.List;

import com.zerock.domain.NoticeVO;

public interface NoticeMapper {
	
	// 공지사항 목록 전체 불러오기
	public List<NoticeVO> getList();
	
	// 공지사항 글쓰기
	public void insertSelectKey(NoticeVO notice);
	
	// 공지사항 특정글 조회
	public NoticeVO read(Long bno);
	
	// 공지사항 삭제
	public int delete(Long bno);
	
	// 공지사항 수정
	public int update(NoticeVO notice);
	
}
