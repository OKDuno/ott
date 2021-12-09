package ott.dla.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	private Long bno;
	private String teg;
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	
}
