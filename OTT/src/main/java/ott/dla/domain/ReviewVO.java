package ott.dla.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewVO {

	private Long rev_bno;
	private String rev_teg;
	private String rev_title;
	private String rev_content;
	private String rev_writer;
	private Date rev_regdate;
	
	
}
