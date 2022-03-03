package com.mecol.hospital.service;

import com.mecol.hospital.entity.Menu;
import com.mecol.hospital.entity.User;
import com.mecol.hospital.entity.UserSearch;
import com.mecol.hospital.util.ResultUtil;

import java.util.List;

public interface UserService {
    void insUser(User user);

    User login(String username, String password);

    List<Menu> getMenus(User user1);

    User getUserById(Integer user_id);

    ResultUtil updateUser(User user);

    User getUsertByUserName(String username);

    ResultUtil getAllUserList(Integer page, Integer limit, UserSearch search);

    ResultUtil updateUserStatusById(int id, int status);

    ResultUtil deleteUserById(int user_id);


}
