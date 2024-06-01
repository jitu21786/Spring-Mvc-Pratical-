package springMvcWithJdbc.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import rowMapper.RowMapperImplemention;
import springMvcWithJdbc.entity.Emp;

@Repository
public class EmpDaoImplemention implements EmpDao {
 
	@Autowired
	public JdbcTemplate temp;
	@Override
	public int saveUserDetail(Emp emp) {
		String query="insert into empInfo values(?,?,?)";
		int result=temp.update(query,emp.getId(),emp.getName(),emp.getCity());
		return result;
	}
	@Override
	public List<Emp> AllData() {
		String query="select *from empInfo";
		List<Emp>list=temp.query(query, new RowMapperImplemention());
		return list;
		
	}

}
