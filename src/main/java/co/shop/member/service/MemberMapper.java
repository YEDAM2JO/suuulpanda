package co.shop.member.service;

import java.util.List;

public interface MemberMapper {
	List<MemberVO> memberSelectList(MemberVO vo);
	MemberVO memberSelect(MemberVO vo);
	int memberSelectMax();
	int memberInsert(MemberVO vo);
	int memberUpdate(MemberVO vo);
	int memberDelete(MemberVO vo);
	// 비밀번호 일치 여부 확인
	int checkPassword(MemberVO vo);


}
