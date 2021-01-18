package com.mycompany.myapp.classes;

import java.util.List;

public interface ClassService {
	public int insertClass(ClassVO vo);

	public int deleteClass(int seq);

	public int updateClass(ClassVO vo);

	public ClassVO getClass(int seq);

	public List<ClassVO> getClassList();
}
