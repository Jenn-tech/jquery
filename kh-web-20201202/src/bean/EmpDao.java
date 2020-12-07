package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

//connection을 만들어서 처리하는 작업이 중요
public class EmpDao {
	Connection conn; //db연결위한 connection개체
	PreparedStatement ps; //sql날리기위해
	ResultSet rs; //쿼리값결과 가져오는
	
	
	//생성자 역할 & 모양
	//1. 객체 생성~ 초기화
	//2. 클래스명과 반드시 일치
	//3. 리턴형이 없다 void사용x
	public EmpDao() {
		conn = new Application().getConn();  
	}
	// Data Access Object: 데이터에 접근하는 것을 목적으로 하는 객체 

	//empvo타입만 저장해서 반환하겠다
	public List<EmpVo> search(String findStr){
		List<EmpVo> list = new ArrayList<EmpVo>();

		try {
			String sql = " select * from hr.employees "
					   + " where  first_name like ? "
					   + " or     email like ? "
					   + " or     phone_number like ? ";
			ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + findStr + "%");
			ps.setString(2, "%" + findStr + "%");
			ps.setString(3, "%" + findStr + "%"); //setstring: 문자열로 반환
			
			rs = ps.executeQuery();
			while(rs.next()) {
				EmpVo vo = new EmpVo();
				vo.setEmployee_id(rs.getInt("employee_id"));
				vo.setFirst_name(rs.getString("first_name"));
				vo.setEmail(rs.getString("email"));
				vo.setPhone_number(rs.getString("phone_number"));
				vo.setSalary(rs.getDouble("salary"));
				
				list.add(vo);
			}
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			try {
				conn.close(); //자원고갈되니까 닫아줘야함
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
	}
}






