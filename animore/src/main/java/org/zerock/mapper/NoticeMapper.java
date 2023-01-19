package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.NoticeVO;

public interface NoticeMapper {
	
	// 공지사항 목록 전체 불러오기
	public List<NoticeVO> getList();
}
