package com.mycompany.myapp.member;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public MemberVO getMember(MemberVO vo) {
		return sqlSession.selectOne("Member.getMember", vo);
	}
}
