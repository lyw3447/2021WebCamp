package com.mycompany.myapp.classes;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ClassServiceImpl implements ClassService {
	@Autowired
	ClassDAO classDAO;

	@Override
	public int insertClass(ClassVO vo) {
		return classDAO.insertClass(vo);
	}

	@Override
	public int deleteClass(int seq) {
		return classDAO.deleteClass(seq);
	}

	@Override
	public int updateClass(ClassVO vo) {
		return classDAO.updateClass(vo);
	}

	@Override
	public ClassVO getClass(int seq) {
		return classDAO.getClass(seq);
	}

	@Override
	public List<ClassVO> getClassList() {
		return classDAO.getClassList();
	}
}
