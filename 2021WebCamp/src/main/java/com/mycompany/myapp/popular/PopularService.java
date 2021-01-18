package com.mycompany.myapp.popular;

import java.util.List;

public interface PopularService {
	public int insertPopular(PopularVO vo);

	public int deletePopular(int seq);

	public int updatePopular(PopularVO vo);

	public PopularVO getPopular(int seq);

	public List<PopularVO> getPopularList();
}
