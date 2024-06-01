package springMvcWithJdbc.dao;

import java.util.List;

import springMvcWithJdbc.entity.Emp;

public interface EmpDao 
{
	int saveUserDetail(Emp emp);
	List<Emp>AllData();

}
