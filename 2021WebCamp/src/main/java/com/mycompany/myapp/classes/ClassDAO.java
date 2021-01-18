package com.mycompany.myapp.classes;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ClassDAO {
	@Autowired
	SqlSession sqlSession;

	public int insertClass(ClassVO vo) {
		int result = sqlSession.insert("Class.insertClass", vo);
		return result;
	}

	public int updateClass(ClassVO vo) {
		int result = sqlSession.update("Class.updateClass", vo);
		return result;
	}

	public int deleteClass(int seq) {
		int result = sqlSession.delete("Class.deleteClass", seq);
		return result;
	}

	public ClassVO getClass(int seq) {
		ClassVO result = sqlSession.selectOne("Class.getClass", seq);
		return result;
	}

	public List<ClassVO> getClassList() {
		List<ClassVO> result = sqlSession.selectList("Class.getClassList");
		return result;
	}
}
