package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AutoComplete {
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	
	public AutoComplete() {
		conn = new Application().getConn(); //커넥션객체 생성해 getconn이라는 메서드통해 커넥션가져옴(객체명없는형태로 가져와서 메소드생성시킴)
	}
	
	// ['java', 'jara', 'jsp', 'javascript', 'like', 'love', 'life'] ==> ''(x), ""(o)
	public String getData() {
		StringBuffer sb = new StringBuffer(); //스트링버퍼를 사용하는 이유 : 조금이라도 빠르게처리하기위해서
		
		//db처리위해서는 예외처리필수
		try {
			String sql = "select first_name from hr.employees"; //sql문장
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery(); //CRUD(create-insert, read-select, update, delete) 이 쿼리를 실행하기 위한 메소드
									//select만 executeQuery(), 나머지는 executeUpdate()
			sb.append("[");
			rs.next(); //옆으로 이동
			sb.append("'" + rs.getString("first_name") + "'");
			while(rs.next()) {
				sb.append(", '" + rs.getString("first_name") + "'");
			}
			
			sb.append("]");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			String temp = sb.toString();
			temp = temp.replaceAll("'", "\"");
			return temp;
		}
	}
}
