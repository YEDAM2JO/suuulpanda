package co.shop.member.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVO {

	private String memberId;
	private String memberPw;
	private String memberName;
	private String memberAddr;
	private String memberTel;
	private String memberGrade;
	private String memberAddr1; //우편번호
	private String memberAddr2; //상세주소 
	private int page;
}
