package java.com.example.springmvc.postwebapplication.dao;

import java.com.example.springmvc.postwebapplication.controller.Flight;
import java.com.example.springmvc.postwebapplication.controller.FlightRowMapper;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;



public class FlightDAO {
	
	JdbcTemplate template;

	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public List<Flight> getAllFlight(){
		String sql ="select * from flight";
		return template.query(sql, new FlightRowMapper());
		
	}
	
	public String insertFlight(Flight f) {
		String sql = "insert into flight values(?,?,?,?,?,?,?,?)";
		template.update(sql,f.getFlight_id(),f.getAirline_id(),f.getAirline_name(),f.getFrom_location(),f.getTo_location(),f.getDeparture_time(),f.getArrival_time(),f.getDuration(),f.getSeats() );
		return "Flight inserted";
	}
	public String deleteFlight(Flight f) {
		String sql = "delete from flight where flight_id = ?";
		template.update(sql, f.getFlight_id());
		return "Flight deleted";
	}
	public List<Flight> getDetails(String fid){
		String sql = "select *from flight where flight_id=?";
		return template.query(sql, new FlightRowMapper(),fid);
	}

}