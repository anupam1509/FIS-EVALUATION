package java.com.example.springmvc.postwebapplication.dao;

import java.com.example.springmvc.postwebapplication.controller.UserRowMapper;
import java.com.example.springmvc.postwebapplication.controller.Users;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;


public class UserDAO {
	
	JdbcTemplate template;

	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public List<Users> getAllUsers(){
		String sql ="select * from users";
		return template.query(sql, new UserRowMapper());
		
	}
	
	public String insertPost(Users user) {
		String sql = "insert into users values(?,?,?)";
		template.update(sql, user.getUsername(), user.getPassword(), user.getRoles());
		return "User inserted";
	}

}
