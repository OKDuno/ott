package ott.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ScrappingVO {
	private int ranking;
	private String title;
	private int score;
	private String img;
	private Date updatedate;
}
