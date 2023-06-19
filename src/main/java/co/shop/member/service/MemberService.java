package co.shop.member.service;

import java.util.List;

public interface MemberService {
	List<MemberVO> memberSelectList(MemberVO vo);
	MemberVO memberSelect(MemberVO vo);
	int memberSelectMax();
	int memberInsert(MemberVO vo);
	int memberUpdate(MemberVO vo);
	int memberDelete(MemberVO vo);
}
