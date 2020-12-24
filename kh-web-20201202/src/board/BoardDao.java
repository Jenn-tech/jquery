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
//				List<Integer> list =  sqlSession.selectList("board.all_serial"); //namespace.id
//				  System.out.println(Arrays.toString(list.toArray()));
//				  
				
				//serial 한건 출력
//				  int serial = sqlSession.selectOne("board.one_serial");
//				 System.out.println("serial : " + serial);
//				 
				
				  //모든 데이터를 BoardVo에 담아 출력 
				List<BoardVo> list2 =  sqlSession.selectList("board.list"); 
				for(BoardVo vo : list2) {
				  System.out.println(vo.getSerial() + " : " + vo.getSubject()); }
				
				
				//serial번호에 해당하는 BoardVo 한건 출력
				BoardVo vo = sqlSession.selectOne("board.view", 10); //parameter의 type
				System.out.println("───────────────────────");
				System.out.println("serial : " + vo.getSerial());
				System.out.println("subject : " + vo.getSubject());
				
				
				//검색어를 전달받아 해당자료를 BoardVo에 담아 출력
				List<BoardVo> list3 = sqlSession.selectList("board.select", "요");
				System.out.println("───────────────────────");
				for(BoardVo vo2 : list3) {
					System.out.println(vo2.getSerial());
					System.out.println(vo2.getSubject());
				}
				
				//한건의 데이터를 BoardVo에 담아 저장하시오
//				System.out.println("───────────────────────");
//				BoardVo vo3 = new BoardVo();
//				vo3.setMid("hong");
//				vo3.setSubject("목말라");
//				
//				int cnt = sqlSession.insert("board.insert", vo3);
//				if(cnt>0) {
//					System.out.println("insert 성공");
//					sqlSession.commit();
//				}
//				else {
//					System.out.println("insert 실패");
//				}
				
				
				//serial = 1인 자료의 subject, doc를 수정
//				System.out.println("───────────────────────");
//				BoardVo vo4 = new BoardVo();
//				vo4.setSubject("수정된제목");
//				vo4.setDoc("수정과먹고싶다");
//				vo4.setSerial(1);
	//			vo4.setPwd("1111");
		//		
//				int cnt2 = sqlSession.update("board.update", vo4);
//				if(cnt2 > 0) {
//					System.out.println("수정됨");
//					sqlSession.commit();
//				}
				
				
				//serial 과 암호를 전달받아 자료를 삭제
				BoardVo vo4 = new BoardVo();
				vo4.setSerial(29);
				vo4.setPwd("1111");
				
				int cnt = sqlSession.delete("board.delete", vo4);
				if(cnt > 0) {
					System.out.println("삭제됨");
					sqlSession.commit();
				}
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
