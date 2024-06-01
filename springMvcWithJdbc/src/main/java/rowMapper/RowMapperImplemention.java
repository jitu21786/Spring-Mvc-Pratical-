package rowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import springMvcWithJdbc.entity.Emp;

public class RowMapperImplemention implements RowMapper<Emp>{

	@Override
	public Emp mapRow(ResultSet rs, int rowNum) throws SQLException {
		 Emp em=new Emp();
		 em.setId(rs.getInt("id"));
		 em.setName(rs.getString("name"));
		 em.setCity(rs.getString("city"));
		return em;
	}

}
