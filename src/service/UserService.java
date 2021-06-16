package service;

import dao1.UserDao;
import dao1.UserDaoImpl_mysql;
import dao1.UserDaoImpl_oracle;
import pojo.User;

import java.util.List;

public class UserService {
    private UserDao userDao = new UserDaoImpl_oracle();

    public void showUsers(){
        List<User> list = userDao.getUsers();
        for (User user:list) {
            System.out.println(user.getUsername());
        }
    }

}
