package dao1;

import pojo.User;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl_mysql extends BaseDao implements UserDao {
    //查询所有用户信息
    public List<User> getUsers(){
        List<User> list_user = new ArrayList<User>();
        try {
            this.getConnection();
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
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            this.closeAll();
        }
        return list_user;
    }

    //新增用户信息
    public boolean updateUser(User user){
        boolean flag = false;
        try {
            this.getConnection();
            statement = connection.createStatement();
            int num = statement.executeUpdate(
                    "update user set username='"+user.getUsername()+"' where id="+user.getId()+";");
            if(num>0){
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            this.closeAll();
        }
        return flag;
    }

    public boolean updateUser2(User user){
        boolean flag = false;
        try {
            this.getConnection();
            pstatement = connection.prepareStatement("update user set username=? where id=?;");
            pstatement.setString(1,user.getUsername());
            pstatement.setInt(2,user.getId());
            int num = pstatement.executeUpdate();
            pstatement.setString(1,"zhangxiaowu");
            pstatement.setInt(2,1);
            num = pstatement.executeUpdate();
            if(num>0){
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            this.closeAll();
        }
        return flag;
    }


    //根据编号修改用户信息
    public boolean insertUser(User user){
        boolean flag = false;
        try {
            this.getConnection();
            statement = connection.createStatement();
            String sql = "insert into user (username,password)" +
                    "values('"+user.getUsername()+"','"+user.getPassword()+"')";
            int num = statement.executeUpdate(sql);
            if(num>0){
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            this.closeAll();
        }
        return flag;
    }
}
