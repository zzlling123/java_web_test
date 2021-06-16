package dao;

import pojo.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
    //查询所有用户信息
    public List<User> getUsers(){
        List<User> list_user = new ArrayList<User>();
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        try {
            //加载驱动 java的反射机制
            Class.forName("com.mysql.cj.jdbc.Driver");
            //创建连接
            connection = DriverManager.getConnection(
                    "jdbc:mysql://127.0.0.1:3306/jdbc_test","root","bdqn");
            //创建statemet并携带sql语句
            statement = connection.createStatement();
            //返回result结果集
            resultSet = statement.executeQuery("select * from user");
            while(resultSet.next()){
                String username = resultSet.getString("username");
                String password = resultSet.getString("password");
                int id = resultSet.getInt("id");
                User user = new User();
                user.setId(id);
                user.setUsername(username);
                user.setPassword(password);
                list_user.add(user);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if(resultSet!=null){
                    resultSet.close();
                }
                if(statement!=null){
                    statement.close();
                }
                if(connection!=null){
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list_user;
    }

    //新增用户信息

    //根据编号修改用户信息

    //删除用户信息
}
