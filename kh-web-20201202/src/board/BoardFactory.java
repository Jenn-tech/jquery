package board;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class BoardFactory {
	private static SqlSessionFactory factory;
	
	static {
		try {
			Reader reader = Resources.getResourceAsReader("board/config.xml");
			factory = new SqlSessionFactoryBuilder().build(reader); //sql sessionfactory 생성
			
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	public static SqlSessionFactory getFactory() {
		return factory;
	}
}

