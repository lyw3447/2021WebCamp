package com.mycompany.myapp.csee;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CseeServiceImpl implements CseeService {

	@Autowired
	CseeDAO cseeDAO;

	@Override
	public int insertCsee(CseeVO vo) {
		return cseeDAO.insertCsee(vo);
	}

	@Override
	public int deleteCsee(int seq) {
		return cseeDAO.deleteCsee(seq);
	}

	@Override
	public int updateCsee(CseeVO vo) {
		return cseeDAO.updateCsee(vo);
	}

	@Override
	public CseeVO getCsee(int seq) {
		return cseeDAO.getCsee(seq);
	}

	@Override
	public List<CseeVO> getCseeList() {
		return cseeDAO.getCseeList();
	}
}

