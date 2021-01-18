package com.mycompany.myapp.hot;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HotDAO {
	@Autowired
	SqlSession sqlSession;

	public int insertHot(HotVO vo) {
		int result = sqlSession.insert("Hot.insertHot", vo);
		return result;
	}

	public int updateHot(HotVO vo) {
		int result = sqlSession.update("Hot.updateHot", vo);
		return result;
	}

	public int deleteHot(int seq) {
		int result = sqlSession.delete("Hot.deleteHot", seq);
		return result;
	}

	public HotVO getHot(int seq) {
		HotVO result = sqlSession.selectOne("Hot.getHot", seq);
		return result;
	}

	public List<HotVO> getHotList() {
		List<HotVO> result = sqlSession.selectList("Hot.getHotList");
		return result;
	}
}
