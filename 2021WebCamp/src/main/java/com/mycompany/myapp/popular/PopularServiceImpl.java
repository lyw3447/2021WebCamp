package com.mycompany.myapp.popular;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PopularServiceImpl implements PopularService {
	
	@Autowired
	PopularDAO popularDAO;

	@Override
	public int insertPopular(PopularVO vo) {
		return popularDAO.insertPopular(vo);
	}

	@Override
	public int deletePopular(int seq) {
		return popularDAO.deletePopular(seq);
	}

	@Override
	public int updatePopular(PopularVO vo) {
		return popularDAO.updatePopular(vo);
	}

	@Override
	public PopularVO getPopular(int seq) {
		return popularDAO.getPopular(seq);
	}

	@Override
	public List<PopularVO> getPopularList() {
		return popularDAO.getPopularList();
	}
}
