package board;

import java.util.Arrays;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class BoardDao {
	SqlSession sqlSession;
	
	public BoardDao() {
		try {
			sqlSession = BoardFactory.getFactory().openSession();
			
			if (sqlSession == null) {
				System.out.println("연결 중 오류");
			}else {
				System.out.println("성공");
			//모든 serial값을 가져옴	
			List<Integer> list = sqlSession.selectList("board.all_serial"); //namespace.id
			System.out.println(Arrays.toString(list.toArray()));
				
			}
			sqlSession.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	public static void main(String[] args) {
		new BoardDao();
	}
}
