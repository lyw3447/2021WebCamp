package com.mycompany.myapp.popular;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PopularDAO {
	@Autowired
	SqlSession sqlSession;

	public int insertPopular(PopularVO vo) {
		int result = sqlSession.insert("Popular.insertPopular", vo);
		return result;
	}

	public int updatePopular(PopularVO vo) {
		int result = sqlSession.update("Popular.updatePopular", vo);
		return result;
	}

	public int deletePopular(int seq) {
		int result = sqlSession.delete("Popular.deletePopular", seq);
		return result;
	}

	public PopularVO getPopular(int seq) {
		PopularVO result = sqlSession.selectOne("Popular.getPopular", seq);
		return result;
	}

	public List<PopularVO> getPopularList() {
		List<PopularVO> result = sqlSession.selectList("Popular.getPopularList");
		return result;
	}
}
