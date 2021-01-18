package com.mycompany.myapp.csee;

import java.util.List;

public interface CseeService {
	public int insertCsee(CseeVO vo);

	public int deleteCsee(int seq);

	public int updateCsee(CseeVO vo);

	public CseeVO getCsee(int seq);

	public List<CseeVO> getCseeList();
}
