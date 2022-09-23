package com.sportsblog.blogCMSMastery.dao;

import java.util.List;

import com.sportsblog.blogCMSMastery.dto.Role;
import com.sportsblog.blogCMSMastery.dto.User;

public interface UserDao {
    public User createUser (User user);
    public List<User> readAllUsers ();
    public User readUserById (int id);
    public void updateUser (User user);
    public void deleteUser (int id);

    List<Role> getRoleForUser(int userId);

    User getUserByUsername(String username);
}
