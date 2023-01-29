package com.zerock.service;

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
public class NoticeServiceTests {
	@Setter(onMethod_= @Autowired)
	private NoticeService service;
	
//	@Test
//	public void testGetList() {
//		service.getList().forEach(notice -> log.info(notice));
//	}
	
//	@Test
//	public void testRegister() {
//		NoticeVO notice = new NoticeVO();
//		
//		notice.setTitle("새로운 공지");
//		notice.setContent("새로운 내용");
//		notice.setWriter("애니모어센터");
//		
//		service.register(notice);
//		
//		log.info("생성된 게시물의 번호 : " + notice.getBno());
//	}
	
//	@Test
//	public void testRead() {
//		log.info("read..... : " + service.read(5L));
//	}
	
//	@Test
//	public void testDelete() {
//		log.info("delete....: " + service.remove(2L));
//	}

}
