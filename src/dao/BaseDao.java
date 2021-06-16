package dao;

import java.sql.*;

public class BaseDao {
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
    PreparedStatement pstatement=null;

    public void getConnection(){
        //加载驱动 java的反射机制
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            //创建连接
            connection = DriverManager.getConnection(
                    "jdbc:mysql://127.0.0.1:3306/jdbc_test","root","bdqn");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void closeAll(){
        try {
            if(resultSet!=null){
                resultSet.close();
            }
            if(statement!=null){
                statement.close();
            }
            if(pstatement!=null){
                pstatement.close();
            }
            if(connection!=null){
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
