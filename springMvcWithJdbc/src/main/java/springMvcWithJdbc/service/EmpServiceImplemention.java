package springMvcWithJdbc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springMvcWithJdbc.dao.EmpDao;
import springMvcWithJdbc.entity.Emp;

@Service
public class EmpServiceImplemention implements EmpService{

	@Autowired
	public EmpDao empDao;
	@Override
	public int userDetail(Emp emp) {
		 return empDao.saveUserDetail(emp);
	}
	@Override
	public List<Emp> fetchAllData() {
		return empDao.AllData();
		
	}

}
