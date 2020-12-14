package bean;

import java.sql.Connection;
import java.sql.DriverManager;


public class Application {
   //DB 연결 소스
   Connection conn;
   public Application() {
      try {
    	  
    	//메모리에 올리는 작업을 class.forname이 함
         Class.forName("oracle.jdbc.driver.OracleDriver"); 
         
       //oracle드라이버의 위치, 포트 등등 유저명, 암호 등을 사용해서 객체를 생성하면 커넥션 객체가 만들어짐
         conn = DriverManager.getConnection(
               "jdbc:oracle:thin:@localhost:1521:XE", 
               "system", "oracle"
               ); 
      }catch(Exception ex) {
         ex.printStackTrace();
      }
   }
   public Connection getConn() {//getter만 만듬 
      return conn;
   }
}




