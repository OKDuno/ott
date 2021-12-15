package ott.dla.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class ReviewReplyVO {
	
	private Long rev_rno;
	private Long rev_bno;
	private String rev_reply;
	private String rev_replyer;
	private Date rev_replydate;
	
}
