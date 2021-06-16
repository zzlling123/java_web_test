package dao1;

import pojo.User;

import java.util.List;

public interface UserDao {
    public List<User> getUsers();
    public boolean updateUser(User user);
    public boolean updateUser2(User user);
    public boolean insertUser(User user);
}
