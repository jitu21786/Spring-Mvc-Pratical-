package controller.dao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import controller.entity.StudentEntity;

@Repository
public class StudentDaoImpl implements StudentDao {

	@Autowired
	private HibernateTemplate temp;

	@Override
	@Transactional
	public int saveUser(StudentEntity entity) {
		Integer result = (Integer)temp.save(entity);
		return result;
	}

	public HibernateTemplate getTemp() {
		return temp;
	}

	public void setTemp(HibernateTemplate temp) {
		this.temp = temp;
	}

}
