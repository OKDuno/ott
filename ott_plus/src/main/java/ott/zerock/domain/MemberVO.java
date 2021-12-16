package ott.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {
	private String userId; //아이디
	private String userPass; //비밀번호
	private String userName; //회원이름
	private Date regDate; //가입일
}
