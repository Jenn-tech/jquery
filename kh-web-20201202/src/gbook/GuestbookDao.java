package gbook;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Application;

public class GuestbookDao {
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	
	public GuestbookDao() {
		conn = new Application().getConn();
	}
	
	public List<GuestBookVo> select(String findStr) {
		List<GuestBookVo> list = new ArrayList<GuestBookVo>();
		try {
			String sql = "select serial, mid, mdate, doc from guestbook where mid like ? or doc like ?	"
					   + "order by serial desc ";
			ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + findStr + "%");
			ps.setString(2, "%" + findStr + "%");
			
			rs = ps.executeQuery();
			while(rs.next()) {
				GuestBookVo gbook = new GuestBookVo();
				gbook.setSerial(rs.getInt("serial"));
				gbook.setMid(rs.getString("mid"));
				gbook.setMdate(rs.getString("mdate"));
				gbook.setDoc(rs.getString("doc"));
				
				list.add(gbook);
			}
			
			
			
			
			
		} catch (Exception ex) {
			ex.printStackTrace();
		}finally {
		try {
			conn.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return list;
		}
	}
//	
//	update() {
//		
//	}
//	
//	insert() {
//		
//	}
//	
//	delete() {
//		
//	}
//	
}
