package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDao {
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	public MemberDao() {
		conn = new Application().getConn();
	
	}
	
	public boolean login(String mid, String pwd) {
		boolean b = true;
		try {
			String sql = "select * from member where mid=? and pwd=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, mid);
			ps.setString(1, mid);
			
			rs = ps.executeQuery();
			if(rs.next()) {
				b = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			return b;
		}
	}
}
