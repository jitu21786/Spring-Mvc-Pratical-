package controller.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import controller.dao.StudentDao;
import controller.entity.StudentEntity;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDao dao;

	@Override
	public int saveUserDetail(StudentEntity entity) {
		return dao.saveUser(entity);
	}

}
