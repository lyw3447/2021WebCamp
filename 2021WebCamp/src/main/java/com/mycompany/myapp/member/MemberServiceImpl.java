package com.mycompany.myapp.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl {
	@Autowired
	MemberDAO memberDAO;
	
	public MemberVO getMember(MemberVO vo) {
		return memberDAO.getMember(vo);
	}
}
