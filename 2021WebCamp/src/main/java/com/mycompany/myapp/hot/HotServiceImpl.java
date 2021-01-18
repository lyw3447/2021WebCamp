package com.mycompany.myapp.hot;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HotServiceImpl implements HotService {

	@Autowired
	HotDAO hotDAO;

	@Override
	public int insertHot(HotVO vo) {
		return hotDAO.insertHot(vo);
	}

	@Override
	public int deleteHot(int seq) {
		return hotDAO.deleteHot(seq);
	}

	@Override
	public int updateHot(HotVO vo) {
		return hotDAO.updateHot(vo);
	}

	@Override
	public HotVO getHot(int seq) {
		return hotDAO.getHot(seq);
	}

	@Override
	public List<HotVO> getHotList() {
		return hotDAO.getHotList();
	}
}
