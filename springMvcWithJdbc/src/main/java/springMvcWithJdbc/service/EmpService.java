package springMvcWithJdbc.service;

import java.util.List;

import springMvcWithJdbc.entity.Emp;

public interface EmpService {
	int userDetail(Emp emp);
	List<Emp> fetchAllData();

}
