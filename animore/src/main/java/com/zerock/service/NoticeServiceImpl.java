package com.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.zerock.domain.Criteria;
import com.zerock.domain.NoticeVO;
import com.zerock.domain.QNAVO;
import com.zerock.mapper.NoticeMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@AllArgsConstructor
@Log4j
@Service
public class NoticeServiceImpl implements NoticeService {
	
	private NoticeMapper mapper;
	
	// 공지사항 목록 전체 불러오기
//	@Override
//	public List<NoticeVO> getList() {
//		log.info("Notice getList.....");
//		return mapper.getList();
//	}
	
	// 공지사항 목록 전체 불러오기
	@Override
	public List<NoticeVO> getList(Criteria cri) {
		log.info("Notice getList....." + cri);
		return mapper.getListPaging(cri);
	}
	
	// 공지사항 전체 데이터 갯수 처리
	@Override
	public int getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}

	// 특정 공지사항 읽기
	@Override
	public NoticeVO get(Long bno) {
		log.info("Notice read....");
		return mapper.read(bno);
	}

	// 조회수 증가
	@Override
	public int viewCount(Long bno) {
		log.info("NoticeViewCount...");
		return mapper.viewCount(bno);
	}	
	
	
	

}
