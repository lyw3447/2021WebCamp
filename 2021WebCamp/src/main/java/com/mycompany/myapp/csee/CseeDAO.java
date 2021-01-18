package com.mycompany.myapp.csee;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CseeDAO {
	@Autowired
	SqlSession sqlSession;

	public int insertCsee(CseeVO vo) {
		int result = sqlSession.insert("Csee.insertCsee", vo);
		return result;
	}

	public int updateCsee(CseeVO vo) {
		int result = sqlSession.update("Csee.updateCsee", vo);
		return result;
	}

	public int deleteCsee(int seq) {
		int result = sqlSession.delete("Csee.deleteCsee", seq);
		return result;
	}

	public CseeVO getCsee(int seq) {
		CseeVO result = sqlSession.selectOne("Csee.getCsee", seq);
		return result;
	}

	public List<CseeVO> getCseeList() {
		List<CseeVO> result = sqlSession.selectList("Csee.getCseeList");
		return result;
	}
}
