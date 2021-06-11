package dao;

import java.sql.*;

public class TestJDBC {
    public static void main(String[] args) {

        try {
            //加载驱动 java的反射机制
            Class.forName("com.mysql.cj.jdbc.Driver");
            //创建连接
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://127.0.0.1:3306/jdbc_test","root","bdqn");
            //创建statemet并携带sql语句
            Statement statement = connection.createStatement();
            //返回result结果集
            ResultSet resultSet = statement.executeQuery("select * from user");
            while(resultSet.next()){
                String username = resultSet.getString("username");
                String password = resultSet.getString("password");
                System.out.println(username+":"+password);
            }
            resultSet.close();
            statement.close();
            connection.close();

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
        }
    }
}
