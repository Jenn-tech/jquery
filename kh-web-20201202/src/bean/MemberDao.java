//login을 위한
package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MemberDao {
	Connection conn; //database의 연결정보
	PreparedStatement ps; //문자열로 되어있는 sql문장을 sql실행문장으로 만들어주는statement
	ResultSet rs; //select문의 실행결과
	
	public MemberDao() {
		conn = new Application().getConn();
	
	}
	
	public boolean login(String mid, String pwd) {
		boolean b = false; //기본 : 로그인되지 않았어
		try {
			String sql = "select count(mid) cnt from members where mid=? and pwd=? ";
			ps = conn.prepareStatement(sql);
			ps.setString(1, mid); //index는 1부터 시작
			ps.setString(2, pwd);
			
			rs = ps.executeQuery();
			if(rs.next()) {
				int cnt = rs.getInt("cnt");
				if (cnt >= 1) { //정확히는 1
					b = true;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			return b;
		}
	}
	
	
	public List<MemberVo> select(Page page){ 
		List<MemberVo> volist = new ArrayList<MemberVo>();
		try {
			
		} catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			return volist;
		}
	}
	

	public String insert(MemberVo vo) {
		String msg = "회원정보가 정상적으로 저장되었습니다.";
	try {
			
		
		
		
		} catch (Exception ex) {
			msg = ex.getMessage();
		}finally {
			return msg;
			}
		}
	

	public String update(MemberVo vo) {
		String msg = "회원정보가 정상적으로 수정되었습니다.";
		try {
			
			
			
			
		} catch (Exception ex) {
			msg = ex.getMessage();
		}finally {
			return msg;
		}
	}
	
	public String delete(MemberVo vo) {
		String msg = "회원정보가 정상적으로 삭제되었습니다.";
		try {
			
			
			
			
		} catch (Exception ex) {
			msg = ex.getMessage();
		}finally {
			return msg;
		}
	}

	public MemberVo view(String mid) {
		MemberVo vo = new MemberVo();
		try {
			
			
			
			
		} catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			return vo;
		}
	}
	
	
}
