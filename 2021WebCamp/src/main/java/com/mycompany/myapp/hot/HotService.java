package com.mycompany.myapp.hot;

import java.util.List;

public interface HotService {
	public int insertHot(HotVO vo);

	public int deleteHot(int seq);

	public int updateHot(HotVO vo);

	public HotVO getHot(int seq);

	public List<HotVO> getHotList();
}
