package com.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.zerock.domain.NoticeVO;
import com.zerock.mapper.NoticeMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@AllArgsConstructor
@Log4j
@Service
public class NoticeServiceImpl implements NoticeService {
	
	private NoticeMapper mapper;
	
	// 공지사항 목록 전체 불러오기
	@Override
	public List<NoticeVO> getList() {
		log.info("Notice getList.....");
		return mapper.getList();
	}

	// 공지사항 글 쓰기
	@Override
	public void register(NoticeVO notice) {
		log.info("Notice register.... : " + notice);
		mapper.insertSelectKey(notice);
	}

	// 특정 공지사항 읽기
	@Override
	public NoticeVO get(Long bno) {
		log.info("Notice read....");
		return mapper.read(bno);
	}

	// 공지사항 삭제
	@Override
	public int remove(Long bno) {
		log.info("delete.... : " + bno);
		return mapper.delete(bno);
	}
	
	// 공지사항 수정
	@Override
	public int modify(NoticeVO notice) {
		log.info("modify : " + notice);
		return mapper.update(notice);
	}
	
	

}
