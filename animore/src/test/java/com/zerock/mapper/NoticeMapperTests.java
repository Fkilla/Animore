package com.zerock.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zerock.domain.NoticeVO;
import com.zerock.mapper.NoticeMapperTests;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class NoticeMapperTests {
	
	@Setter(onMethod_= @Autowired)
	private NoticeMapper mapper;
	
	// 전체 목록 불러오기
//	@Test
//	public void testgetList() {
//		mapper.getList().forEach(notice -> log.info(notice));
//	}
	
	// 공지사항 글 쓰기
//	@Test
//	public void testInsert() {
//		
//		NoticeVO notice = new NoticeVO();
//		notice.setTitle("애니모어 센터에서 알립니다.");
//		notice.setContent("테스트용");
//		notice.setWriter("애니모어센터");
//		
//		mapper.insertSelectKey(notice);
//		log.info(notice);
//	}
	
	// 공지사항 특정 글 읽기
//	@Test
//	public void testRead() {
//		NoticeVO notice = mapper.read(3L);
//		
//		log.info(notice);
//	}
	
	// 공지사항 특정 글 삭제
//	@Test
//	public void testDelete() {
//		log.info("delete count:" + mapper.delete(3L));
//		
//	}

}
