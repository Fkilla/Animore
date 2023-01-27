package com.zerock.mapper;


import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zerock.domain.Criteria;
import com.zerock.domain.QNAVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class QNAMapperTests {

	@Setter(onMethod_= @Autowired)
	private QNAMapper mapper;
	
//	// 전체 목록 불러오기
//	@Test
//	public void testgetList() {
//		mapper.getList().forEach(qna -> log.info(qna));
//	}
//	
//	@Test
//	public void testPaging() {
//		Criteria cri = new Criteria();
//		cri.setPageNum(3);
//		cri.setAmount(10);
//		List<QNAVO> list = mapper.getListPaging(cri);
//		list.forEach(vo -> log.info(vo));
//	}
	
	@Test
	public void testSearch() {
		Criteria cri = new Criteria();
		cri.setKeyword("문의");
		cri.setType("TWC");
		
		List<QNAVO> list = mapper.getListPaging(cri);
		list.forEach(board -> log.info(board)); // 람다식 형태
	}
	
}
