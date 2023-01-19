package com.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeVO {
	
	// 공지사항
	private Long bno;
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	private Date updatedate;
}
